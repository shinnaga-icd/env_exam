import 'package:envied/envied.dart';

part 'env.g.dart';

const dotenvFilePath =
    String.fromEnvironment('dotenv_file_path', defaultValue: 'env/.env.dev');

@Envied(path: dotenvFilePath, obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'secrets.TEST1')
  static final val1 = _Env.val1;
  @EnviedField(varName: 'vars.TESTA')
  static final val2 = _Env.val2;
}
