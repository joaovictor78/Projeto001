import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
    maxHeight: 250,
    minHeight: 25,
    body: Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Agrocontabil"),
       leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
       elevation: 0,
       backgroundColor: Colors.transparent,
     ),
     body: Container(
       child: Column(
         children: [
        Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            
          ],
        ),
        ),
         ],
       ),
     ),
    ),
    ); 
  }
}
