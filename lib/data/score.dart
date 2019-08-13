import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScorePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(20),
     child: Table(
       border: TableBorder.all(width: 1.0, color: Colors.black),
       children: [
        TableRow(
          children:[
            new Text("test", textAlign: TextAlign.center)
          ]
        ),
        TableRow(
          children: [
            new Text("test", textAlign: TextAlign.center)
          ]
        ),
      ]),
   );
 }
}