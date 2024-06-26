// ignore_for_file: constant_identifier_names

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
    @EnviedField(varName: 'TYRADS_SDK_KEY')
    static const String TYRADS_SDK_KEY = _Env.TYRADS_SDK_KEY;
    @EnviedField(varName: 'TYRADS_SDK_SECRET')
    static const String TYRADS_SDK_SECRET = _Env.TYRADS_SDK_SECRET;
}