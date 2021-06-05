import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

import 'models/userModel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  headerSection(),
                  textSection(),
                  Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
                      child: TextButton(
                        onPressed: (){
                          print("hiii");
                        },
                        child: Text("Forgot password?",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.blue)),
                      )),
                  btnSignin(),
                  //btnRegistration(),
                  textRegistration(),
                ],
              ),
      ),
    );
  }

  signIn(String phno, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var data = {'userid': phno, 'password': pass};
    var jsonResponse = null;

    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('admin:1234'));
    var response = await post("https://api.jumboroofings.co.in/V1/Auth/login",
        body: data,
        headers: <String, String>{
          'authorization': basicAuth,
          'X-API-KEY':'jumbo',
        });
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        if (jsonResponse["status"] == false) {
          showToast(jsonResponse["message"]);
        } else {
          sharedPreferences.setString("token",jsonResponse["message"]["token"]);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => MainPage()),
              (Route<dynamic> route) => false);
        }
      }
    }
    else {

      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  goToReg() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => RegisterPage()),
        (Route<dynamic> route) => false);
  }

  Container btnSignin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: 120.0),
      child: RaisedButton(
        onPressed: () {
          if (noController.text == "" || passwordController.text == "") {
            showToast("Empty field");
          } else {
            setState(() {
              _isLoading = true;
            });
            signIn(noController.text, passwordController.text);
          }
        },
        elevation: 3.0,
        hoverColor: Colors.blueGrey,
        color: Colors.grey,
        child: Text("Sign In", style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }

  Container textRegistration() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Center(
        child: TextButton(
          onPressed: (){
            print('hiii');
          },
          child: Text(
            'Signing in for the first time?',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }

  final TextEditingController noController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: noController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              hintText: "User Id",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              prefixIcon: Icon(Icons.person, color: Colors.white70),
              hintStyle: TextStyle(color: Colors.white70),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.white,
            obscureText: isVisible,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              hintText: "Password",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70)),
              prefixIcon: Icon(Icons.lock, color: Colors.white70),
              suffix: IconButton(icon: Icon(isVisible ? Icons.visibility_off : Icons.visibility, color: Colors.blueAccent),onPressed: (){
                setState(() {
                  isVisible = !isVisible;
                });
              },),
              hintStyle: TextStyle(color: Colors.white70),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/jumbo_logo.png",width: 200,height: 200,),
            SizedBox(
              height: 10,
            ),
            Text("SIGN IN",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  showToast(String msg) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}

