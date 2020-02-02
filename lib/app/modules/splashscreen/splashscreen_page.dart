import 'package:agrocontabilapp/app/modules/home/home_page.dart';
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
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animationController.forward();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 40000)).then((value) =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    animGreenContainer = Tween(
      begin: 3.0,
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
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 45,
            left: 50,
            right: 50,
            child: Container(
              child: Image.asset('imagens/logo.png'),
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
