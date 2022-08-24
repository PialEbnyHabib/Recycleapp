// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recylce/Chemical.dart';
import 'package:recylce/Electronics.dart';
import 'package:recylce/Metals.dart';
import 'package:recylce/Papers.dart';
import 'package:recylce/Pickup.dart';
import 'package:recylce/Plastic.dart';
import 'package:recylce/Sell items.dart';
import 'package:recylce/Buy items.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Signin-Signup/login_screen.dart';
import 'package:recylce/Used Items.dart';
import 'package:recylce/Recycle Items.dart';

final List data = [
  {
    "title": "Image 1",
    "url":
        "https://ecocycle.com.au/wp-content/uploads/2019/04/Why-recycling-is-important-for-the-future.jpg"
  },
  {
    "title": "Image 2",
    "url":
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F23%2F2021%2F04%2F28%2Frecycling-for-money-2000.jpg"
  },
  {
    "title": "Image 3",
    "url":
        "https://media.generalkinematics.com/wp-content/uploads/2014/04/plastic-recycling-955x500.png"
  },
  {
    "title": "Image 4",
    "url":
        "https://media.greenmatters.com/brand-img/d-9yrYj4m/0x0/why-is-recycling-important-1587135431361.jpg"
  },
  {
    "title": "Image 5",
    "url":
        "https://ecocycle.com.au/wp-content/uploads/2019/08/Fun-Facts_-Why-is-recycling-important_.jpg"
  },
  {
    "title": "Image 6",
    "url":
        "https://thumbs.dreamstime.com/b/recycle-waste-bins-different-trash-types-color-containers-sorting-wastes-organic-trash-paper-can-glass-plastic-bottle-150034531.jpg"
  },
];

void main() => runApp(Home());

class Home extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  // This widget is the root of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // menubar
          actions: [
            PopupMenuButton(
                icon: Icon(Icons.menu, color: Colors.blue),
                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("My Account"),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Settings"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Logout"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    print("My account menu is selected.");
                  } else if (value == 1) {
                    print("Settings menu is selected.");
                  } else if (value == 2) {}
                }),
          ],

          // end menu bar

          title: Text("Recycle"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
        ),

        // body

        body: ListView(shrinkWrap: true, children: <Widget>[
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
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

          // But- SEll - Recycle items sell sections.

          Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Color.fromARGB(255, 248, 248, 248),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Material(
                          child: Ink.image(
                            width: 80,
                            height: 80,
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Material(
                          child: Ink.image(
                            width: 80,
                            height: 80,
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Material(
                            child: Ink.image(
                              width: 80,
                              height: 80,
                              image: AssetImage('Images/pickup1.jpg'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Recycleitems()));
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

          // END OF But- SEll - Recycle items sell sections.

          SizedBox(
            height: 10,
          ),

          // coursel Option Image

          Column(
            children: [
              // Implement the image carousel
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(milliseconds: 400),
                  height: MediaQuery.of(context).size.height / 5,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: data.map((item) {
                  return GridTile(
                    child: Image.network(item["url"], fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ],
          ),

          // CarouselSlider end

          //
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
                          height: 55,
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
                  height: 50,
                  width: 65,
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
                  height: 50,
                  width: 65,
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
                  height: 50,
                  width: 65,
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
                  height: 50,
                  width: 65,
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
                  height: 50,
                  width: 65,
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
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Papers",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
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
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Plastics",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
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
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Metals",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
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
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Chemicals",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
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
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Electronics",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
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
            height: 30,
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
                          height: 55,
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
                    color: Colors.green[400],
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
                        "Bag your\nitems",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
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
                    color: Colors.green[400],
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
                        "Book a\npickup",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
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
                    color: Colors.green[400],
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
                      "We'll\ncollect it",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
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
              color: Color.fromARGB(255, 219, 250, 222),
              child: Text(
                "Help us help you to keep your city safe and grab a few bucks in the process. Recycling couldn't be easier!",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
