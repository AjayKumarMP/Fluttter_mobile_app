import 'package:flutter/material.dart';

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return RegisterState();
  }
}

class RegisterState extends State{

  final _key = GlobalKey();
  String _username = '';

  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Center(
        child: Container(
          child: Form(
            key: _key,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "USERNAME",
                    hintText: "Enter user name here"
                  ),
                  validator: (val){
                    if(val.isEmpty) return "Please Enter username";
                    return "";
                  },
                  onChanged: (val)=> _username = val,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}