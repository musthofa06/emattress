import 'package:flutter/material.dart';

import 'GridProduct.dart';
import 'ListProduct.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  bool list = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            iconSize: 20.0,
            color: Colors.black,
          ),
          title: Text("Home",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              iconSize: 19.0,
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Catalog",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 25.0),
                    Container(
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16.0),
                            border: OutlineInputBorder(),
                            hintText: "Search Mattress",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.list), onPressed: () {
                                  setState(() {
                                    list = true;
                                  });
                                }),
                            IconButton(
                                icon: Icon(Icons.grid_on), onPressed: () {
                                  setState(() {
                                    list = false;
                                  });
                                })
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Filter"),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text("Sort")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    list ? getListProduct() : getGridProduct()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  GridView getGridProduct() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => GridProduct(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.6 / 0.8),
    );
  }

  ListView getListProduct() {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ListProduct(),
                itemCount: 10,
                separatorBuilder: (_, index) => Divider(
                      color: Colors.black45,
                    ));
          }
        }
        
       