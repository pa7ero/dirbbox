import 'package:flutter/material.dart';
import './home.dart';
import './Views/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      initialRoute: '/MyHomePage',
      routes: {
        '/MyHomePage': (context) => MyHomePage(),
        '/ProfileView': (context) => ProfileView(),
      },
    );
  }
}
