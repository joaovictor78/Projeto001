import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/clipper-widget.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animGreenContainer;
  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
    animationController.forward();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((value) =>
        Navigator.pushReplacementNamed(
            context, '/home'),);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    animGreenContainer = Tween(
      begin: 5.0,
      end: 1.0,
    ).animate(animationController);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(),
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 40,
            left: 50,
            right: 50,
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 180,
                    width: 190,
                    child:  Image.asset('assets/logoapp.png'),
                  ),
                 SizedBox(
                   height: 38,
                   width: 38,
                   child: Image.asset('assets/loadingbutton.gif'),
                 ),
                ],
              ),
            ),
          ),
          AnimatedBuilder(
              animation: animGreenContainer,
              child: ClipPath(
                clipper: Clipper(),
                child: Container(
                  color: Colors.teal[300],
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              builder: (BuildContext context, Widget child) {
                return Align(
                  alignment: Alignment(0, animGreenContainer.value),
                  child: child,
                );
              }),
        ],
      ),
    );
  }
}
