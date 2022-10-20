// prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:indianfilmtitles/how_it_works.dart';
import 'package:indianfilmtitles/how_to_mint.dart';
import 'package:indianfilmtitles/news_page.dart';
import 'package:indianfilmtitles/title_page.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:indianfilmtitles/about_page.dart';
// import 'about_page.dart';
// import 'service_drawer.dart';
// import 'package:path/path.dart' as Path;

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Color.fromRGBO(55, 56, 102, .5),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(55, 56, 102, 1),
          leading: Container(
            padding: EdgeInsets.all(8.0),
            // color: Color.fromARGB(1, 30, 33, 87), rgba(31, 33, 52, 1)
            width: 40,
            child: Image.network('https://i.ibb.co/Prhvy7r/logo.jpg'),
          ),
          actions: [
            iconWidget(),
          ],
        ),
        drawer: DrawerElement(),
        // drawerEnableOpenDragGesture: ,
        body: Center(
          child: Container(
            // color: Colors.red,
            padding: const EdgeInsets.all(25),
            child: Text(""),
          ),
        )),
  ));
}

class DrawerElement extends StatelessWidget {
  const DrawerElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width:,
      backgroundColor: Color.fromRGBO(55, 56, 102, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("about us"),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,

          //   ),
          // ),

          ListTile(
            title: Text(
              "About Us",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.card_membership,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          ListTile(
            title: Text("Titles", style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.title,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TitlePage()));
            },
          ),
          ListTile(
            title: Text("News", style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.newspaper_rounded,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewsPage()));
            },
          ),
          ListTile(
            title: Text("How it works?", style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.work_history_rounded,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HowItWorksPage()));
            },
          ),
          ListTile(
            title: Text("How to mint?", style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.question_answer_rounded,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HowToMintPage()));
            },
          ),
        ],
      ),
    );
  }
}

class iconWidget extends StatelessWidget {
  const iconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.menu));
  }
}