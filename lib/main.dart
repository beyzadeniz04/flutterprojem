import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final String title = 'Günlük Planlayıcı';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: (Colors.orange[300]),
        ),
        body: const LoginPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
