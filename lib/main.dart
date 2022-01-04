import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_frontend/screens/home.dart';
import 'package:hp_frontend/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(primary: Colors.teal)),
      title: 'Hospital',
      initialRoute: 'login',
      routes: {
        Home.id: (context) => const Home(),
        LogIn.id: (context) => const LogIn(),
      },
    );
  }
}
