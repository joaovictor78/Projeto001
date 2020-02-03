import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class TextInput extends FormField{
String title;
TextInput({@required this.title});
dynamic textInput(BuildContext context){
return Container(
  margin: EdgeInsets.symmetric(horizontal: 20),
  width: MediaQuery.of(context).size.width,
  height: 40,
  child: TextFormField(
  decoration: InputDecoration(
    hintText: title,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    fillColor: Colors.grey.shade100,
  ),
  ),
);
}
}