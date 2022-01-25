import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'adminDashBoard.dart';
import 'newTemplate.dart';
import 'bmDashBoard.dart';
import 'bmInput.dart';
import 'data.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());
final player = AudioCache();


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        'login': (context) => LoginScreen(),
        'bm': (context) => BmDashBoard(),
        'pm': (context) => AdminDashBoard(),
        'new': (context) => NewTemplate(),
        'bminput': (context) => BmInput(),
        'data': (context) => Data(),

      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C21),
        scaffoldBackgroundColor: Color(0xFF090C21),
        accentColor: Color(0xFFD10074)
      ),
    );
  }
}

