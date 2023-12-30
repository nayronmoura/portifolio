import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app_module.dart';
import 'package:portifolio/app_widget.dart';
import 'package:portifolio/configure_web.dart';

void main() async {
  configureApp();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
