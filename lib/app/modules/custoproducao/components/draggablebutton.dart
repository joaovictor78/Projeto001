import 'package:flutter/material.dart';
 
class DraggableButton extends StatefulWidget {
  String title, route;
  DraggableButton({this.title, this.route});
 
  @override
  _DraggableButtonState createState() => _DraggableButtonState();
}
 
class _DraggableButtonState extends State<DraggableButton> {
  bool isRight = false;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (direction) {
        var sentido = direction.delta.dx;
        setState(() {
          if (sentido > 0) {
            isRight = true;
            Future.delayed(Duration(seconds: 1)).then((value) {
              return Navigator.pushNamed(context, '/home');
            });
          } else {
            isRight = false;
          }
        });
      },
      child: Draggable(
        maxSimultaneousDrags: isRight ? 1 : 0,
        feedbackOffset: Offset(100, 0),
        axis: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width / 1.8,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.amber[700],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          child: Center(
              child: Container(
                  child: Text(widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )))),
        ),
        feedback: Container(
          width: MediaQuery.of(context).size.width / 1.8,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.amber[700],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          child: Center(
              child: Container(
                  child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ))),
        ),
        childWhenDragging: Container(
          width: MediaQuery.of(context).size.width / 1.7,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.amber[700],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}