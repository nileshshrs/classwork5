
import 'package:classwork5/app.dart';
import 'package:classwork5/service_locator/init_dependancy.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();// need to check if every requirement/ permission is enabled
  await initDependency();
  runApp(
    App(),
  );
}
