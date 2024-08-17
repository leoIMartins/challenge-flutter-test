import 'package:flutter/material.dart';
import 'package:flutter_app_form/screen/form_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormScreen()
      ),
    );
  }
}
