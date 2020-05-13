import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: 100.0,
            height: 80.0,
            decoration: BoxDecoration(
                //
                image: DecorationImage(
                    image: AssetImage('assets/kasur.jpg'), fit: BoxFit.cover))),
        SizedBox(
          width: 15.0,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Kasur",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text("IKEA"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\20.000",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ))
      ],
    );
  }
}
