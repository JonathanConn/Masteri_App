import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScorePage extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(20),
     child: Table(
       defaultColumnWidth: FlexColumnWidth(5),
       border: TableBorder.all(width: 1.0, color: Colors.black),
       children: [
        _buildRow(1, "Jack", 500),
        _buildRow(2, "Jack", 500),
        _buildRow(3, "Jack", 500),
      ]
    ),
   );
 }

 TableRow _buildRow(int place, String name, double score){
   return TableRow(
    children:[   
      Text(place.toString() + ".\t " + name, textAlign: TextAlign.center),
      Text(score.toString(), textAlign: TextAlign.center)
    ],
   );
 }

}