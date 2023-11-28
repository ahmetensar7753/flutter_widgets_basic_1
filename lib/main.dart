// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _img1 =
      "https://www.ilgincgercek.com/wp-content/uploads/2018/05/ilginc-araba.jpg";

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.amber,
          title: Text("Title"),
        ),
        body: Container(
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("A"),
                  Text("H"),
                  Text("M"),
                  Text("E"),
                  Text("T"),
                ],
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.brown,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            log("clicked FAB");
          },
          child: Icon(Icons.access_time_sharp, color: Colors.yellow),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Widget containerExample() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blue, width: 5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: NetworkImage(_img1),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(10, 20), blurRadius: 20),
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(0, -20),
                blurRadius: 10,
              ),
            ]),
        child: Text(
          "Ahmet",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
