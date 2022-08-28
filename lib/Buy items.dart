// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recylce/Flash%20Sale.dart';
import 'package:recylce/For%20You.dart';
import 'package:recylce/Home.dart';
import 'package:recylce/Most%20Viewed.dart';
import 'package:recylce/New%20Arrival.dart';
import 'package:recylce/Product_category.dart';
import 'package:recylce/bottom_nav_controller.dart';
import 'package:recylce/Buyitems/Buyitemscatagory.dart';

void main() => runApp(Buyitems());

class Buyitems extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => Home())),
          ),
          title: Text("Buy Category"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
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
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
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
                              'Popular Category',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.white24,
                            width: 80,
                            height: 75,
                            child: Center(
                              child: InkWell(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/catagory.ico'),
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ProductCategory()));
                                },
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
            SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 130,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.stylus,
                        PointerDeviceKind.unknown,
                      },
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Ink.image(
                                height: 130,
                                width: 200,
                                image: AssetImage('Images/furniture.jpg'),
                                fit: BoxFit.cover,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Household",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Buyitemscategory()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Ink.image(
                                height: 130,
                                width: 200,
                                image: AssetImage('Images/textile.jpg'),
                                fit: BoxFit.cover,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Clothes",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ProductCategory()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Ink.image(
                                height: 130,
                                width: 200,
                                image: AssetImage('Images/devices.jpg'),
                                fit: BoxFit.cover,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Electric Device",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ProductCategory()));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Ink.image(
                                height: 130,
                                width: 200,
                                image: AssetImage('Images/kitchen_pro1.jpg'),
                                fit: BoxFit.cover,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Appliances",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ProductCategory()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                              'Flash Sale',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.white24,
                            width: 80,
                            height: 68,
                            child: Center(
                              child: InkWell(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/arrow.ico'),
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              FlashSale()));
                                },
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
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/furniture.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/ceramics.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Furniture",
                      style: TextStyle(
                        color: Colors.green[400],
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                      ),
                    )),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Ceramics",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
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
                              'For You',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.white24,
                            width: 80,
                            height: 68,
                            child: Center(
                              child: InkWell(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/arrow.ico'),
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ForYou()));
                                },
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
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/furniture.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/ceramics.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Furniture",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Ceramics",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
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
                              'New Arrival',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.white24,
                            width: 80,
                            height: 68,
                            child: Center(
                              child: InkWell(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/arrow.ico'),
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              NewArrival()));
                                },
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
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/furniture.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/ceramics.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Furniture",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Ceramics",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
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
                              'Most Viewed',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: Colors.white24,
                            width: 80,
                            height: 68,
                            child: Center(
                              child: InkWell(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/arrow.ico'),
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              MostViewed()));
                                },
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
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/furniture.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
                Material(
                  child: Ink.image(
                    height: 130,
                    width: 200,
                    image: AssetImage('Images/ceramics.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProductCategory()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Furniture",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 255, 209),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Ceramics",
                        style: TextStyle(
                          color: Colors.green[400],
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProductCategory()));
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
