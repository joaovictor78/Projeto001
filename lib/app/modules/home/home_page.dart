import 'package:agrocontabilapp/icons/my_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'components/charts/barchart.dart';
import 'components/charts/linechart.dart';
import 'components/charts/piechart.dart';
import 'components/neuromorphic_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   

   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
    return Scaffold(
      appBar: AppBar(
        iconTheme:  IconThemeData(color: Colors.green),
        centerTitle: true,
        title: Text("AGROCONTÁBIL",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w900, color: Colors.teal)),
        leading: IconButton(
              icon: Icon(
              MyIcons.format_align_left,
              color: Colors.teal,
              size: 25,
            ),
            onPressed: () {
             return  _scaffoldKey.currentState.openDrawer();
            }),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        child: Drawer(
          child: Column(
            children: [
              Container(
                height: 180,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text("CREDITOS"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SlidingUpPanel(
        borderRadius: radius,
        panel: _floatingPanel(),
        maxHeight: 250,
        minHeight: 128,
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
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        children: <Widget>[
          Center(
            child: Container(
              child: Card(
                elevation: 7,
                child: GroupedBarChart(animate: true)
                ),
              height: 300,
              width: 300,
            ),
          ),
          Center(
            child: Container(
              child: Card(
                elevation: 7,
                child: PieOutsideLabelChart(animate: true)
                ),
              height: 300,
              width: 300,
            ),
          ),
          Center(
            child: Container(
              child: Card(
                elevation: 7,
                child: NumericComboLinePointChart(animate: true)
                ),
              height: 300,
              width: 300,
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
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Divider(
            thickness: 2.5,
            indent: 90,
            endIndent: 90,
            color: Colors.grey.withOpacity(0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
              NeuromorphicButton(
                child: Container(
                  height: 68,
                  width: 68,
                  child: Icon(Icons.power_settings_new),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
