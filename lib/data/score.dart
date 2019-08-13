import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScorePage extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: StreamBuilder(
       stream: Firestore.instance.collection('scores').snapshots(),
       builder: (context, snapshot){
         if(!snapshot.hasData) return const Text('Loading...');
         return ListView.builder(
           itemExtent: 80,
           itemCount: snapshot.data.documents.length,
           itemBuilder: (context, index) => 
           _buildListItem(context, snapshot.data.documents[index]),
         );
       },
     ),
   );
 }

 Widget _buildListItem(BuildContext context, DocumentSnapshot document){
   return ListTile(
     title: Row(children: [
       Expanded(child: Text(
         document['name'],
       ),
       ),
       Container(
         padding: EdgeInsets.all(5),
         child: Text(
           document['time'].toString(),
         ),
       ),
     ],
     ),
   );
 }

}