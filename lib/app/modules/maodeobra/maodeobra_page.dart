import 'package:flutter/material.dart';

class MaodeobraPage extends StatefulWidget {
  final String title;
  const MaodeobraPage({Key key, this.title = "Maodeobra"}) : super(key: key);

  @override
  _MaodeobraPageState createState() => _MaodeobraPageState();
}

class _MaodeobraPageState extends State<MaodeobraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
