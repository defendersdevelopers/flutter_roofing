import 'package:flutter/material.dart';

class TargetSec extends StatelessWidget {
  const TargetSec({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            Container(
                width: size.width,
                color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Target & Achievement",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),)
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("June'2021",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey[900])),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Total Target in MT: 100",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey[900])),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Achievement in MT: 99",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey[900]),
                      ),
                      Row(),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        '99 %',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ));
  }
}
