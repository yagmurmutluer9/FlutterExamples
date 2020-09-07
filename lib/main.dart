import 'package:flutter/material.dart';
import './screens/start_screen.dart';
void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slide Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: StartScreen(),
    );
    throw UnimplementedError();
  }
}