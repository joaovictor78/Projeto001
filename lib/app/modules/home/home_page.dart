import 'package:agrocontabilapp/icons-personalizados/customicon_icons.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(
    initialPage: 1,
  );
  final _currentPageNotifier = ValueNotifier<int>(0);
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
  );
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      borderRadius: radius,  
      panel: _floatingPanel(),
      maxHeight: 250,
      minHeight: 128,
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("AGROCONTÁBIL",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.teal)),
          leading: IconButton(icon: Icon(CustomIcon.menu), onPressed: () {}),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    _buildPageView(),
                    _buildCircleIndicator(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildPageView() {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        children: <Widget>[
          Center(
            child: Container(
              height: 100,
              width: 300,
              color: Colors.green,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              color: Colors.blue,
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              color: Colors.red,
            ),
          ),
        ],
        controller: controller,
        onPageChanged: (int index) {
          _currentPageNotifier.value = index;
        },
      ),
    );
  }

  _buildCircleIndicator() {
    return Align(
      child: CirclePageIndicator(
        itemCount: 3,
        currentPageNotifier: _currentPageNotifier,
      ),
    );
  }
 
  Widget _floatingPanel() {
    return Container(
     
    );
  }
}
