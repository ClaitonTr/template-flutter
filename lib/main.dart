import 'package:flutter/material.dart';
import 'package:flutter_template/app/app_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'package:flutter_template/app/infra/dependecy_injection/dependency_injection.dart';

Future main() async {
  await loadEnv();
  configureDependencies();
  runApp(AppWidget());
}

Future<void> loadEnv() async {
  const isProduction = bool.fromEnvironment('dart.vm.product');
  await DotEnv.load(fileName: isProduction ? '.env' : '.env_dev');
}
