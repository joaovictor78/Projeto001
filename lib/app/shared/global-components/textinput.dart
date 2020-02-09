import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class TextInput extends StatelessWidget {
  String title;
TextInput({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  width: MediaQuery.of(context).size.width,
  height: 60,
  child: TextFormField(
  decoration: InputDecoration(
    hintText: title,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide.none,
    ),
    fillColor: Colors.grey.shade300,
    filled: true,
  ),
  ),     
    );
  }
}