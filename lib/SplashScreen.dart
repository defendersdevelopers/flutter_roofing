import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';



void main() {
  runApp(SplashPage());
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash_Page extends StatefulWidget {
  @override
  _Splash_PageState createState() => _Splash_PageState();
}
class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => MainPage()), (Route<dynamic> route) => false)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child:Image(image: AssetImage("assets/images/logo.jpg"))
    );
  }
}

