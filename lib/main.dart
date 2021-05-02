import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screens/Dealers.dart';
import 'package:flutter_app/screens/Home.dart';
import 'package:flutter_app/screens/Products.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/screens/Reports.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Roofing app",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(
          accentColor: Colors.white70
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ReportsPage(),
    DealersPage(),
    HomePage(),
    ProductsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null) {
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jumbo")),
      drawer: Drawer(
          child:  ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
              children: [
                Image(image: AssetImage("assets/images/logo.jpg"),
                height: 20,
                width: 20,),
                Text('Jumbo',
                textAlign: TextAlign.center),
            ],
          ),
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              ),
              ListTile(
                title: Text('Dashboard',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Invoice',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Distributors',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Target & Achievements',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Sales Team',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              Container(
                height: 1,
                color: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              Text('Company',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold)),
              ListTile(
                title: Text('Employees',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Gallery',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
              Container(
                height: 1,
                color: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              Text('Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold)),
              ListTile(
                title: Text('Profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onTap: () {

                },
              ),
            ],
          ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Dealers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Products',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }



}


