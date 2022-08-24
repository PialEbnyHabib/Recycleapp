import 'package:flutter/material.dart';
import 'package:recylce/Chemical.dart';
import 'package:recylce/Electronics.dart';
import 'package:recylce/Household.dart';
import 'package:recylce/Metals.dart';
import 'package:recylce/Papers.dart';
import 'package:recylce/Plastic.dart';
import 'package:recylce/Product_category.dart';
import 'package:recylce/Sell items.dart';
import 'package:recylce/Home.dart';

void main() => runApp(Recycleitems());

class Recycleitems extends StatelessWidget {
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
        title: Text("Recycle items"),
        backgroundColor: Colors.green[400],
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
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
                      )),
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
                            height: 75,
                            child: Center(
                              child: Image(
                                width: 25,
                                height: 25,
                                image: AssetImage('Images/catagory.ico'),
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
              height: 35,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Color.fromARGB(255, 211, 255, 209),
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('Images/household.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Household()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Household',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Household()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Household()));
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Color.fromARGB(255, 211, 255, 209),
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('Images/plastic.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Plastic()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Plastic',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Plastic()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Plastic()));
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Color.fromARGB(255, 211, 255, 209),
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('Images/electronics.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Electronics()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Electronics',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Electronics()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Electronics()));
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.green[400],
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(
                                      'Images/paper & cardboards.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Papers()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Papers',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Papers()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Papers()));
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.green[400],
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('Images/chemical.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Chemical()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Chemical',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Chemical()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Chemical()));
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.green[400],
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Color.fromARGB(255, 211, 255, 209),
                              child: Material(
                                child: Ink.image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('Images/metals2.ico'),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Metals()));
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                  color: Color.fromARGB(255, 211, 255, 209),
                                  child: Text(
                                    'Metals',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Metals()));
                              },
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.white24,
                              width: 67,
                              height: 60,
                              child: Center(
                                child: Material(
                                  child: Ink.image(
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('Images/arrow.ico'),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Metals()));
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
                  ],
                )),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ));
  }
}
