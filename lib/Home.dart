// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:recylce/Chemical.dart';
import 'package:recylce/Electronics.dart';
import 'package:recylce/Household.dart';
import 'package:recylce/Metals.dart';
import 'package:recylce/Papers.dart';
import 'package:recylce/Pickup.dart';
import 'package:recylce/Plastic.dart';
import 'package:recylce/Sell items.dart';
import 'package:recylce/Buy items.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Recycle"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.blue), onPressed: () {}),
        ),

        // body

        body: ListView(shrinkWrap: true, children: <Widget>[
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('Images/icon.png')),
                    color: Colors.green[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(110),
                      bottomRight: Radius.circular(110),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Color.fromARGB(255, 219, 250, 222),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Color.fromARGB(255, 219, 250, 222),
                        child: Material(
                          child: Ink.image(
                            width: 40,
                            height: 40,
                            image: AssetImage('Images/sell_icon1.png'),
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Sellitems()));
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 75),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Color.fromARGB(255, 219, 250, 222),
                        child: Material(
                          child: Ink.image(
                            width: 40,
                            height: 40,
                            image: AssetImage('Images/buy_icon1.png'),
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Buyitems()));
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 75),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Color.fromARGB(255, 219, 250, 222),
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Material(
                            child: Ink.image(
                              width: 40,
                              height: 40,
                              image: AssetImage('Images/pickup1.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Pickup()));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              child: Text(
                "Did you know that more than 20% of what goes in your Household bin can be recycled? Turn these recyclable Wastes to cash! The wastes you throw away everyday can fetch you money. For only 20 taka a bag, we will collect your recyclables from your door, on demand. Recycling couldn't be easier!",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 211, 255, 209),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Container(
                            color: Color.fromARGB(255, 211, 255, 209),
                            child: Text(
                              'What we collect',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            )),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 80,
                          height: 53,
                          child: Center(
                            child: Image(
                              width: 25,
                              height: 25,
                              image: AssetImage('Images/info.ico'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/household.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Household()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/paper & cardboards.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Papers()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/plastic.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Plastic()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/metals2.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Metals()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/chemical.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Chemical()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/electronics.ico')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Electronics()));
                },
              ),
            ],
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Household",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Household()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Papers",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Papers()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Plastics",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Plastic()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Metals",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Metals()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Chemicals",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Chemical()));
                },
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 25,
                  width: 57,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Electronics",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Electronics()));
                },
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 211, 255, 209),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Container(
                            color: Color.fromARGB(255, 211, 255, 209),
                            child: Text(
                              'How it works',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            )),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 80,
                          height: 53,
                          child: Center(
                            child: Image(
                              width: 25,
                              height: 25,
                              image: AssetImage('Images/info.ico'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/bag_items.jpg')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {},
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/book_a_pickup.jpg')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {},
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 90,
                  width: 95,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: Color.fromARGB(255, 70, 183, 74)),
                      image: DecorationImage(
                          image: AssetImage('Images/pickup1.jpg')),
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(750),
                        topRight: Radius.circular(750),
                        bottomLeft: Radius.circular(750),
                        bottomRight: Radius.circular(750),
                      )),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. Bag your\n     items",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      )),
                ),
                onTap: () {},
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "2. Book a\n  pickup",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      )),
                ),
                onTap: () {},
              ),
              SizedBox(width: 0),
              InkWell(
                child: Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      " 3. We'll\n collect it",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              child: Text(
                "Help us help you to keep your city safe and grab a few bucks in the process. Recycling couldn't be easier!",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
