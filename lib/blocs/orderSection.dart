import 'package:flutter/material.dart';
class OrderSec extends StatelessWidget {
  const OrderSec({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ORDERS",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.normal)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Row(
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
                          width: size.width / 3 - 35,
                          height: size.width / 3 - 70,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                            width: size.width / 3 - 35,
                            padding:
                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Center(child: Text("NEW"))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
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
                          width: size.width / 3 - 35,
                          height: size.width / 3 - 70,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                            width: size.width / 3 - 35,
                            padding:
                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Center(child: Text("INVOICES"))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
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
                          width: size.width / 3 - 35,
                          height: size.width / 3 - 70,
                          color: Colors.amber,
                          child: Center(
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                            width: size.width / 3 - 35,
                            padding:
                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Center(child: Text("PAYMENT"))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}