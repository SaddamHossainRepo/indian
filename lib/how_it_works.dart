import 'package:flutter/material.dart';

class HowItWorksPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Color.fromRGBO(55, 56, 102, .5),
      appBar: AppBar
      (
        title: Text("How it Works"),
        backgroundColor: Color.fromRGBO(55, 56, 102, 1),
      ),
      body: Text("Our Working process"),
    );
  }
}