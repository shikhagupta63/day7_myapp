import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp() {
  FlutterStatusbarcolor.setStatusBarColor(
    Colors.cyanAccent,
  );
  button1() {
    Fluttertoast.showToast(
        msg: "My profile",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.green,
        textColor: Colors.blue,
        fontSize: 25.0);
  }

  button2() {
    Fluttertoast.showToast(
        msg: "Hello",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_LEFT,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.red,
        textColor: Colors.blue,
        fontSize: 25.0);
  }

  var icon0 = Icon(Icons.arrow_back);
  var icon1 = Icon(Icons.accessible);
  var icon2 = Icon(Icons.add_circle);
  var iconbutton1 = IconButton(
    icon: icon1,
    onPressed: button1,
  );
  var iconbutton2 = IconButton(
    icon: icon2,
    onPressed: button2,
  );

  var mybar = AppBar(
    title: Text(
      "My profile",
      style: TextStyle(
        color: Colors.amber,
        //   backgroundColor: Colors.green,
        fontStyle: FontStyle.italic,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.redAccent,
    leading: icon0,
    actions: <Widget>[
      iconbutton1,
      iconbutton2,
    ],
  );
  myprint() {
    Fluttertoast.showToast(
        msg: "Like",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.blue,
        fontSize: 25.0);
  }

  myprint1() {
    Fluttertoast.showToast(
        msg: "My profile",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.blue,
        fontSize: 25.0);
  }

  var mybody = Container(
    height: double.infinity,
    width: double.infinity,
    //  color: Colors.grey,
    margin: EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
      //        border: Border.all(width: 0, color: Colors.blue),
    ),
    alignment: Alignment.center,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(50),
          height: 160,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //  Icon(Icons.email),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person_add),
                  Text(
                    "   Shikha Gupta",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              //    Padding(
              //    padding: const EdgeInsets.all(8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text(
                    "  Shikha@gmail.com  ",
                    style: TextStyle(
                      fontSize: 14,
                      //            fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: myprint,
          onTap: myprint1,
          child: Container(
            // alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/shikhagupta63/myfirstapp/master/IMG_20190627_234536_638.jpg',
                    scale: 1),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                width: 0,
                color: Colors.yellow,
              ),
              borderRadius: BorderRadius.circular(50),
              // color: Colors.green,
            ),

            height: 80,
            width: 80,
            // child: Text("jhdsgakj"),
            //  color: Colors.green,
          ),
        ),
      ],
    ),
  );

  var app = Scaffold(
    appBar: mybar,
    body: mybody,
  );
  return MaterialApp(
    home: app,
    debugShowCheckedModeBanner: false,
  );
}
