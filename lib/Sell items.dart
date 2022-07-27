// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:recylce/Home.dart';
import "package:recylce/Recycle Items.dart";
import "package:recylce/Used Items.dart";

void main() => runApp(Sellitems());

class Sellitems extends StatelessWidget {
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
        title: Text("Sell items"),
        backgroundColor: Colors.green[400],
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('Images/icon.png')),
                  color: Colors.green[400],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(110),
                    bottomRight: Radius.circular(110),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          color: Color.fromARGB(255, 219, 250, 222),
          child: Text(
            "Hello User,",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          color: Color.fromARGB(255, 219, 250, 222),
          child: Text(
            "Did you know that more than 20% of what goes in your Household bin can be recycled? For only 20 taka a bag, we will collect your recyclables from your door, on demand. Recycling couldn't be easier!",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 55,
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
                        child: Container(
                          color: Color.fromARGB(255, 211, 255, 209),
                          child: Material(
                            child: Ink.image(
                              width: 53,
                              height: 53,
                              image: AssetImage('Images/recycle.ico'),
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
                      const SizedBox(width: 15),
                      Expanded(
                        child: InkWell(
                          child: Container(
                              color: Color.fromARGB(255, 211, 255, 209),
                              child: Text(
                                'Recycle Items',
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
                                        Recycleitems()));
                          },
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 75,
                          height: 70,
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
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Color.fromARGB(255, 211, 255, 209),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Color.fromARGB(255, 211, 255, 209),
                          child: Material(
                            child: Ink.image(
                              width: 53,
                              height: 53,
                              image: AssetImage('Images/used.ico'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Useditems()));
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
                                'Used Items',
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
                                        Useditems()));
                          },
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 75,
                          height: 70,
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
                                            builder: (BuildContext context) =>
                                                Useditems()));
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
      ]),
    ));
  }
}
