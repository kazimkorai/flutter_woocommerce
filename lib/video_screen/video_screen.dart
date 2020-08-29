import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class VideoScreenPage extends StatefulWidget {
  @override
  _VideoScreenPageState createState() => _VideoScreenPageState();
}

class _VideoScreenPageState extends State<VideoScreenPage> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double containerSpace = 16.0;

    Color colorFordrawerItems = Colors.grey;

    Widget horizontalList1 = new Container(
        margin: EdgeInsets.symmetric(vertical: 0.0),
        height: 150.0,
        width: MediaQuery.of(context).size.width,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  width: 90,
                  height: 80,
                  child: Image.asset('assets/figting.jpg',
                      width: 90.0, height: 100, fit: BoxFit.fitHeight),
                ),
                Container(
                  height: 50,
                  width: 90,
                  child: SingleChildScrollView(
                    child: Text('HbhadvaKHD AK nhajksbflk hjkghfhdrhfdfhdfghf'),
                  ),
                )
              ],
            )),
            Padding(padding: EdgeInsets.only(left: 8)),
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  width: 90,
                  height: 80,
                  child: Image.asset('assets/figting.jpg',
                      width: 90.0, height: 100, fit: BoxFit.fill),
                ),
                Container(
                  height: 50,
                  width: 90,
                  child: SingleChildScrollView(
                    child: Text('HbhadvaKHD AK nhajksbflk'),
                  ),
                )
              ],
            )),
            Padding(padding: EdgeInsets.only(left: 8)),
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  width: 90,
                  height: 80,
                  child: Image.asset('assets/figting.jpg',
                      width: 90.0, height: 100, fit: BoxFit.fill),
                ),
                Container(
                  height: 50,
                  width: 90,
                  child: SingleChildScrollView(
                    child: Text('HbhadvaKHD AK nhajksbflk'),
                  ),
                )
              ],
            )),
          ],
        ));

    return Scaffold(
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
                  Column(
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
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 6),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 12, right: 12),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 8),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: new SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/figting.jpg'),
                Padding(padding: EdgeInsets.all(4)),
                Text(
                  'FEATURED FIGHTERS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Container(
                        child: Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width - 55,
                            child: ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                horizontalList1,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(0)),
                Text(
                  'UPCOMMING EVENTS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(4)),
                SizedBox(
                    height: 150.0,
                    width: 300.0,
                    child: Carousel(
                      dotPosition: DotPosition.bottomCenter,
                      images: [
                        ExactAssetImage("assets/figting.jpg"),
                        ExactAssetImage("assets/figting.jpg"),
                        ExactAssetImage("assets/figting.jpg")
                      ],
                    )),
                Padding(padding: EdgeInsets.all(4)),
                Text(
                  'WATCH',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: Container(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: MediaQuery.of(context)
                                        .size
                                        .width /
                                    (MediaQuery.of(context).size.height / 3),
                                mainAxisSpacing: 2,
                                crossAxisSpacing: 2,
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Image.network(
                              imgList[index],
                              fit: BoxFit.fitWidth,
                            ),
                          );
                        }),
                  ),
                ),
                Padding(padding: EdgeInsets.all(1)),
                Text(
                  'LATEST PHOTOS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: 150,
                  child: Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/figting.jpg',
                        height: 140,
                        width: 140,
                        fit: BoxFit.fill,
                      ),
                      new Padding(padding: EdgeInsets.only(left: 5)),
                      Image.asset(
                        'assets/figting.jpg',
                        height: 140,
                        width: 140,
                        fit: BoxFit.fill,
                      )
                    ],
                  )),
                ),
                Padding(padding: EdgeInsets.only(top: 30))
              ],
            )
          ],
        ),
      ),
    );
  }
}
