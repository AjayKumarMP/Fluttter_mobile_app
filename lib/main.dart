import 'package:flutter/material.dart';

import './src/pages/register.dart';
import './src/pages/home.dart';
import './src/pages/login.dart';


// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (ctx) => Login(),
        '/home': (ctx)=> Home(),
        '/Register': (ctx)=> Register()
        },
    );
  }

  void btnClicked() {
    print("clicked");
  }
}
