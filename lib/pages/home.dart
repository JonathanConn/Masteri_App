import 'package:flutter/material.dart';
import 'package:masteri/pages/placeholder_widget.dart';
import 'package:masteri/auth/signIn.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.deepOrange),
    LoginPage()
  ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Masteri'),
     ),
     body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.calendar_today),
           title: Text('Cal'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.equalizer),
           title: Text('Chart'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.account_box),
           title: Text('Prof')
         )
       ],
     ),
   );
 }

 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
 
}
