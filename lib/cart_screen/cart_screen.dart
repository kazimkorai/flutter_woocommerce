import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopingCart extends StatefulWidget {
  @override
  _ShopingCartState createState() => _ShopingCartState();
}

class _ShopingCartState extends State<ShopingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(

        height: 70,
        margin: EdgeInsets.only(left: 0),
        child: Card(elevation: 2,child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(margin: EdgeInsets.only(left: 5),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "TOTAL",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                Text(
                  "R120,000",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                width: 110,
                child: Material(

                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(30),

                  color: Colors.amber, child: Row(
                  children: <Widget>[
                    Text('     Checkout'),
                    Spacer(),
                    InkWell(
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
                ),
              ),
            ),

          ],
        )],),),
      ),
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: Text("Shoping "),
          centerTitle: true,
        ),
        body: Column(

          children: <Widget>[
            Container(
              child: Expanded(
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          margin:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 4, right: 4),
                                  child: Image.asset(
                                    'assets/figting.jpg',
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: Expanded(
                                      child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Bloves Handfhone x-13 headset",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.black12),
                                            child: InkWell(
                                              child: Icon(
                                                Icons.cancel,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      new Row(
                                        children: <Widget>[
                                          Text(
                                            "Pk Kids Color Family Black",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "R400,000",
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.black12),
                                            child: InkWell(
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6)),
                                          Text("2"),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6)),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.black12),
                                            child: InkWell(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
            ),

          ],
        ));
  }
}
