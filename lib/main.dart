//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gtl_homework/models/info.dart';
import 'package:gtl_homework/views/contacts.dart';
import 'package:gtl_homework/views/viewContact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GTL Homework',
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),
            headline2: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),
            bodyText1: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.grey[700]),
            bodyText2: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.grey[600]),
        ),
        primarySwatch: Colors.blue,
      ),
      home: ContactsList(),
    );
  }
}

