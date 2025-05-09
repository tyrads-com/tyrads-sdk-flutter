import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:cryptography/cryptography.dart';
import 'package:tyrads_sdk/src/app_config.dart';

class AcmoEncrypt {
  final String _encryptionKey;
  AcmoEncrypt(this._encryptionKey) {
    if (AcmoConfig.SECURE &&
        Uint8List.fromList(utf8.encode(_encryptionKey)).length != 32) {
      throw ArgumentError('Encryption key must be 32 bytes long.');
    }
  }

  Future<Map<String, dynamic>> encryptDataAESGCM(
      Map<String, dynamic> data) async {
    final algorithm = AesGcm.with256bits();
    final iv = algorithm.newNonce();

    try {
      final secretKey =
          SecretKey(Uint8List.fromList(utf8.encode(_encryptionKey)));
      final secretBox = await algorithm.encrypt(
        utf8.encode(json.encode(data)),
        secretKey: secretKey,
        nonce: iv,
      );

      return {
        'val': base64.encode(secretBox.cipherText),
        'vec': base64.encode(iv),
        'tag': base64.encode(secretBox.mac.bytes),
      };
    } catch (e) {
      debugPrint('Error encrypting data: $e');
      return {
        'val': '',
        'vec': '',
        'tag': '',
      };
    }
  }

  Future<String> decryptDataAESGCM(
    Map<String, dynamic> encryptedData,
  ) async {
    final algorithm = AesGcm.with256bits();
    final secretKey =
        SecretKey(Uint8List.fromList(utf8.encode(_encryptionKey)));

    final iv = base64.decode(encryptedData['vec']);
    final authTag = base64.decode(encryptedData['tag']);
    final encryptedText = base64.decode(encryptedData['val']);

    final secretBox = SecretBox(
      encryptedText,
      nonce: iv,
      mac: Mac(authTag),
    );

    try {
      final plainTextBytes = await algorithm.decrypt(
        secretBox,
        secretKey: secretKey,
      );

      return utf8.decode(plainTextBytes);
    } catch (e) {
      debugPrint('Error decrypting data: $e');
      return '';
    }
  }
}
