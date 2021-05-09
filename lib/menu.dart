import 'package:flutter/material.dart';
import 'HardLevel.dart';
import 'SimpleLevel.dart';
import 'contactus.dart';
import 'drawer.dart';



class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = 'Simple Level Game';
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sessional 2',
      home: Scaffold(

        appBar: AppBar(
          title: Text(title),
        ),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Simplelevel()),
                    );
                  },
                  child: Text("Simple Level >>",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height:10,
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(35, 20, 35, 20),
                  color: Colors.red,

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hardlevel()),
                    );
                  },
                  child: Text("Hard Level >>",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height:_height/2,
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(55, 30, 55, 30),
                  color: Colors.deepPurpleAccent,

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  },
                  child: Text("Contact us",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}