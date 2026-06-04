import 'dart:convert';
import 'dart:typed_data';

class SecurityUtils {
  static const String _salt = "3252dce0de296b87";
  static String deobfuscate(List<int> intList) {
    final bytes = Uint8List.fromList(intList);
    final result = Uint8List(bytes.length);
    final saltBytes = utf8.encode(_salt);
    for (var i = 0; i < bytes.length; i++) {
      result[i] = bytes[i] ^ saltBytes[i % saltBytes.length];
    }
    return utf8.decode(result);
  }
}
