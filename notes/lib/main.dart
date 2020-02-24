import 'package:flutter/material.dart';
import 'package:notes/Screens/NoteList.dart';
import 'package:notes/Screens/NoteDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Note Keeper",

      debugShowCheckedModeBanner: false,

      home:NoteList() ,
    );
  }
}

