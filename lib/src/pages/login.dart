import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey();
  String _userName = "";
  String _password = "";

  void _login() {
    print(_userName);
    print(_password);
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Builder(
          builder: (ctx) => Form(
            key: _formKey,
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "Enter your username",
                  ),
                  onChanged: (val) => setState(() => _userName = val),
                  validator: (val) {
                    if (val.isEmpty) return "Please Enter UserName";
                    return "";
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password"
                  ),
                  validator: (val) {
                    if (val.isEmpty) return "Please enter password";
                    return "";
                  },
                  onChanged: (val) => setState(() => _password = val),
                ),
                Container(
                  child: RaisedButton(color: Color.fromARGB(0, 1, 0, 0),
                    child: Text("Login"),
                    onPressed: _login,
                  ),
                )
              ],
            ),
            )
          ),
        ),
      ),
    );
  }
}
