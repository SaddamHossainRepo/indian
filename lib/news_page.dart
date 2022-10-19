import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Color.fromRGBO(55, 56, 102, .5),
      appBar: AppBar
      (
        title: Text("News page"),
        backgroundColor: Color.fromRGBO(55, 56, 102, 1),
      ),
      body: Text("Our News"),
    );
  }
}