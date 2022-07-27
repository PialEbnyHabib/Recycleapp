// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:recylce/Plastic/Accessories.dart';
import 'package:recylce/Plastic/Bubble%20Warp.dart';
import 'package:recylce/Plastic/Bottle1.dart';
import 'package:recylce/Plastic/Plastic%20Lid.dart';
import 'package:recylce/Plastic/Plastic_Bag_Wrapper.dart';
import 'package:recylce/Plastic/Polystyrene.dart';
import 'package:recylce/Recycle Items.dart';

void main() => runApp(Plastic());

class Plastic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => Recycleitems())),
          ),
          title: Text("Plastic"),
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
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Images/icon.png')),
                        color: Colors.green[400],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(110),
                          bottomRight: Radius.circular(110),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
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
                                  'Plastic Items',
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
                              height: 80,
                              child: Center(
                                child: Image(
                                  width: 25,
                                  height: 25,
                                  image: AssetImage('Images/plastic.ico'),
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/bubble1.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BubbleWrap()));
                        },
                      ),
                    ),
                  ),
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/bottle1.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Bottle1()));
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
                        "Bubble Wrap",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => BubbleWrap()));
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
                        "Plastic Bottle",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Bottle1()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/lid.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Lid()));
                        },
                      ),
                    ),
                  ),
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/bag.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Bag()));
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
                        "Plastic Lid",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Lid()));
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
                        "Plastic Bag",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Bag()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/accessories1.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      PlasticAccessories()));
                        },
                      ),
                    ),
                  ),
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/polystyrene.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Polystyrene()));
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
                        "Accessories",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PlasticAccessories()));
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
                        "Polystyrene",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Polystyrene()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
