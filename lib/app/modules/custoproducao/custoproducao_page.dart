import 'package:flutter/material.dart';

class CustoproducaoPage extends StatefulWidget {
  final String title;
  const CustoproducaoPage({Key key, this.title = "Custoproducao"})
      : super(key: key);

  @override
  _CustoproducaoPageState createState() => _CustoproducaoPageState();
}

class _CustoproducaoPageState extends State<CustoproducaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custo de produção",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
            margin: EdgeInsets.only(top: 2),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            color: Colors.teal[600],
            decoration: BoxDecoration(

            ),
            child: Stack(
              children:[
            
              ],
            ),
            ),
            Expanded(
              child: Column(
                children:[

                ],
              ),
            ),
          ],
          ),
        ),
    
      floatingActionButton: FloatingActionButton(onPressed: (){},
       child: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 15,),
      ),
    );
  }
}
