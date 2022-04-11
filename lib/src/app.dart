import 'package:flutter/material.dart';

import '../src/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
