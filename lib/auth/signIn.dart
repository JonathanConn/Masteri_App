import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:masteri/pages/home.dart';

class LoginPage extends StatefulWidget{
  @override 
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input){
                if(input.isEmpty){
                  return 'Please type an email';
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                labelText: 'Email'
              ),
              
            ),
            
            TextFormField(
              validator: (input){
                if(input.length < 6){
                  return 'Your password needs to be at least 6 characters';
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                labelText: 'Password'
              ),
              obscureText: true,
            ),
            
            RaisedButton(
              onPressed: signIn,
              child: Text('Sign in'),
            ),

            RaisedButton(
              onPressed: signUp,
              child: Text('Sign up'),
            ),

          ],
        ),
      )
      )
    );
  }

  Future<void> signIn() async{
    final formState = _formKey.currentState;
    
    if(formState.validate()){
      formState.save();
      try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
      }catch(e){
        print(e.message);
      }
    }
  }

   Future<void> signUp() async{
    final formState = _formKey.currentState;
    
    if(formState.validate()){
      formState.save();
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
      }catch(e){
        print(e.message);
      }
    }
  }

}