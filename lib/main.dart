import 'package:flutter/material.dart';
import 'package:jajan/constants.dart';
import 'package:jajan/screens/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: LoginPage(),
    );
  }
}
