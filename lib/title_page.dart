import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Color.fromRGBO(55, 56, 102, .5),
      appBar: AppBar
      (
        title: Text("Title Page"),
        backgroundColor: Color.fromRGBO(55, 56, 102, 1),
      ),
      body: Text("Our Title page"),
    );
  }
}