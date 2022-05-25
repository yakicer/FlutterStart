import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/login_screen.dart';
import 'package:flutter_pages/screens/select_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      home: SelectProfileScreen(),
    );
  }
}