import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("mi_card"),
          ),
        ),
        backgroundColor: Colors.cyan[100],
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              for(var i=0;i<15;i++)MyCards()
            ],
          ),
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
//        color: Colors.white,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: const [
            Colors.blue,
            Colors.tealAccent,
          ]),
          boxShadow: const[
            BoxShadow(blurRadius: 5)
          ],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Icon(Icons.adb, size: 25)),

    );
  }
}
