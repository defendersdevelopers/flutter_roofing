import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/blocs/orderSection.dart';
import 'package:flutter_app/blocs/distributorSection.dart';
import 'package:flutter_app/blocs/gpsSection.dart';
import 'package:flutter_app/blocs/targetSection.dart';

class HomePage extends StatelessWidget {
  SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(5, 40, 5, 5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  'Welcome, Customer Name',
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                child: Text(
                  'Role Name',
                  style: TextStyle(color: Colors.black45, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              OrderSec(size: size),
              SizedBox(
                height: 12,
              ),
              DistributorSec(),
              SizedBox(
                height: 20,
              ),
              GpsSec(),
              SizedBox(
                height: 20,
              ),
              TargetSec(size: size),
            ])),
      ],
    ));
  }
}
