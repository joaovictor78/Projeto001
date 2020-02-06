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
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: 250,
      minHeight: 25,
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Agrocontabil"),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                 _buildPageView(),
                 _buildCircleIndicator(),
                ],),
                ),
            ],
          ),
        ),
      ),
    );
  }
    _buildPageView(){
      return Container(
        child: PageView(
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
  }

