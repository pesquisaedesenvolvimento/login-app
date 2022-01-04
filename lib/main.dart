import 'package:flutter/material.dart';
import 'package:login_app/features/login/pages/signin/login_page.dart';
import 'package:login_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(context),
      home: const LoginPage(),
    );
  }
}
