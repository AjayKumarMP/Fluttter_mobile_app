import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return  HomeState();
  }
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Header"),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('item 1'),
              onTap: (){
                Navigator.pop(ctx);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: (){
                Navigator.pop(ctx);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text("Home"),),
      body: Center(
        child: Text("Welcome Home"),
      ),
    );
  }
}