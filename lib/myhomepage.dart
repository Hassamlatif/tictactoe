import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'menu.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Menu()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Color.fromRGBO(0, 255, 128, 0.2),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
              child: new Image.asset('profile.png')),
            SizedBox(height: 20),
            Text(
              "Saqib Javaid",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            FadeAnimatedTextKit(
                text: ["FA17-BCS-096", "BSCS-B15", "Section B", "2nd Sessional"],
                textStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],

        ),
      ),
    );
  }
}
