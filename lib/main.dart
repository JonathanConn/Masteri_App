import 'package:flutter/material.dart';
import 'package:masteri/auth/signIn.dart';
import 'package:masteri/pages/home.dart' as prefix0;


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Masteri',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      //home: new LoginPage(),
      home: new prefix0.home(),
    );
  }

}