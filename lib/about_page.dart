import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Color.fromRGBO(55, 56, 102, .5),
      appBar: AppBar
      (
        title: Text("About Us"),
        backgroundColor: Color.fromRGBO(55, 56, 102, 1),
      ),
      body: Text("About page"),
    );
  }
}