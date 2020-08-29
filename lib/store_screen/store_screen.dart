import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:woocommerce/woocommerce.dart';

String baseUrl = "https://www.247fighting.com/";
String consumerKey = "ck_33389f0b5c8f1079884131d9083c448a873f545700";
String consumerSecret = "cs_80507c95e0e98a7e76385c673478a50446eef37aaa";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double containerSpace = 16.0;
  Color colorFordrawerItems = Colors.grey;
  List<WooProduct> products = [];
  List<WooProduct> featuredProducts = [];
  WooCommerce wooCommerce = WooCommerce(
    baseUrl: baseUrl,
    consumerKey: consumerKey,
    consumerSecret: consumerSecret,
    isDebug: true,
  );

  Future getProducts() async {
    products = await wooCommerce.getProducts();
    setState(() {});
    print(products.toString() + 'kkk');
  }

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      drawer: Container(
        margin: EdgeInsets.only(top: 30),
        child: Drawer(
          elevation: 2,
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          new Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://i.imgur.com/BoN9kdC.png")))),
                          new Container(
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Text(
                            'User Name',
                            style: TextStyle(color: Colors.white),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 14, right: 14),
                            child: new SizedBox(
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.0,
                                    color: Colors.black),
                                decoration: new InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    suffixIcon: Icon(Icons.search),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(25.0),
                                      ),
                                    ),
                                    filled: true,
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    fillColor: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )),
                  new Container(
                    margin: EdgeInsets.only(top: 6),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 12, top: 12, right: 12),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 2),
                              child: Text(
                                'Home',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Tickets',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Events',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Watch',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Blogs',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'About',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Store',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: containerSpace),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Logout',
                                style: TextStyle(color: colorFordrawerItems),
                              ),
                            ),
                            new Container(
                              margin: EdgeInsets.only(top: 5),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
          ///yahain sy hy issue esi body main
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.5),
          ),
          itemBuilder: (BuildContext context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: CachedNetworkImage(
                      imageUrl: products[index].images[0].src,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          products[index].name ?? 'Loading...',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Expanded(
                          child: Text(
                            products[index].description ?? 'Loading...',
                            maxLines: 2,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              products[index].price
                            ),
                           Icon(Icons.note)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              color: Colors.black26,
            );
          }),
    );
  }
}
