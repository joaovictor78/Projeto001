import 'package:flutter/material.dart';

class NeuromorphicButton extends StatefulWidget {
NeuromorphicButton({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _NeuromorphicButtonState createState() => _NeuromorphicButtonState();
}

class _NeuromorphicButtonState extends State<NeuromorphicButton> {
  bool isPressed = false;

  void onPressedDown(PointerDownEvent _) => setState(() {
        isPressed = true;
           Navigator.pushNamed(context, '/custoproducao');
  
      });

  void onPressedUp(PointerUpEvent _) => setState(() {
        isPressed = false;
      });
  
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onPressedDown,
      onPointerUp: onPressedUp,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF1F2F4),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.lerp(
                Colors.blueGrey.shade100,
                Colors.white,
                .57,
              ),
              Color(0xffF1F2F4),
              Color(0xffF1F2F4),
              Color.lerp(
                Colors.white,
                Colors.black,
                .01,
              ),
            ],
            stops: [
              .1,
              .3,
              .7,
              1,
            ],
          ),
          boxShadow: isPressed
              ? null
              : [
                  BoxShadow(
                    color: Color.lerp(
                      Colors.blueGrey.shade100,
                      Colors.white,
                      .3,
                    ),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(4, 2),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: -Offset(1, 1),
                  ),
                  BoxShadow(
                    color: Color.lerp(
                      Colors.white,
                      Colors.black,
                      .02,
                    ),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: -Offset(4, 2),
                  ),
                ],
        ),
        child: widget.child ??
            Container(
              width: 50,
              height: 50,
            ),
      ),
      
    );
  }
}