import 'package:csi_library/home_page.dart';

import 'package:flutter/material.dart';

import 'loginRegister/login.dart';
import 'loginRegister/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => MyLogin(),
          'register': (context) => MyRegister(),
          'homepage': (context) => HomePage(),
        });
  }
}
