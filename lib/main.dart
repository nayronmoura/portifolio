import 'package:flutter/material.dart';
import 'package:portifolio/app/app_widget.dart';
import 'package:portifolio/configure_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  runApp(const AppWidget());
}
