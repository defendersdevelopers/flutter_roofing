import 'package:flutter/material.dart';
class DistributorSec extends StatelessWidget {
  const DistributorSec({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("DISTRIBUTOR",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.normal)),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Distributor Requests',
                      style: TextStyle(fontSize: 16),
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
                        const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text(
                          '5/10',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              new BorderRadius.circular(30.0)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Add Distributor',
                            style: TextStyle(fontSize: 14),
                          ),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          primary: Colors.white,
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              new BorderRadius.circular(30.0)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'View',
                          style: TextStyle(fontSize: 10),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}