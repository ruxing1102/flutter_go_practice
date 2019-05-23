import 'package:flutter/material.dart';
import 'package:flutter_go_practice/views/first_page/home.dart';

void main() => runApp(MyApp());

const int ThemeColor = 0xFFc91B3C;

class MyApp extends StatelessWidget {

  showWelcomePage(){
    return AppPage();
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'title',
      theme: ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0,
        ),
      ),
      home: new Scaffold(
        body: showWelcomePage(),
      ),
    );
  }
}
