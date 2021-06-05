import 'package:flutter/material.dart';

class GpsSec extends StatelessWidget {
  const GpsSec({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("GPS TRACKING",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.normal)),
        ),
        Row(
          children: [
            Flexible(
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text('Track Executives')
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 10,
            ),

            Flexible(
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text('Locate Clients')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
