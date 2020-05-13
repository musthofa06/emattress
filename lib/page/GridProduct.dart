import 'package:flutter/material.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100.0,
        height: 100.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Container(
                height: 150.0,
                decoration: BoxDecoration(
                    //
                    image: DecorationImage(
                        image: AssetImage('assets/kasur.jpg'),
                        fit: BoxFit.fill))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kasur",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 5.0),
                Text("IKEA"),
                // SizedBox(height: 10.0),
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
            )
          ],
        ),
      ),
    );
  }
}
