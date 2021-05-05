import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/login.dart';

class HomePage extends StatelessWidget {
  SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Container(
            margin: EdgeInsets.all(5),
            child: Column(children: [
              Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ORDERS",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "date",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 16,
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Container(
                                          width: size.width / 2 - 35,
                                          height: size.width / 2 - 70,
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "5",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      Container(
                                          width: size.width / 2 - 35,
                                          padding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child: Center(child: Text("ACTIVE"))),
                                    ],
                                  ),
                                )),
                            Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 16,
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Container(
                                          width: size.width / 2 - 35,
                                          height: size.width / 2 - 70,
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "8",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      Container(
                                          width: size.width / 2 - 35,
                                          padding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10),
                                          child:
                                              Center(child: Text("COMPLETED"))),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("New Requests",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                Text(
                                  "Pending Action",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black12),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              height: 50,
                              width: 50,
                              color: Colors.yellow,
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Conversion",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[900])),
                            SizedBox(
                              height: 10,
                            ),
                            Text("537",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "+22% of target",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[900]),
                            ),
                            Row(),
                          ],
                        ),
                      ),
                      Container(
                          width: size.width,
                          color: Colors.green,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Sales Chart",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 10,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Conversion",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[900])),
                            SizedBox(
                              height: 10,
                            ),
                            Text("537",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "+22% of target",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[900]),
                            ),
                            Row(),
                          ],
                        ),
                      ),
                      Container(
                          width: size.width,
                          color: Colors.green,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Sales Chart",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )),
                    ],
                  )),
            ])),
      ],
    ));
  }
}
