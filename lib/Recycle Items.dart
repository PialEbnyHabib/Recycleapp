import 'package:flutter/material.dart';
import 'package:recylce/Home.dart';
import "package:recylce/Sell items.dart";
import 'package:recylce/Recycle product/Bottles.dart';

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
                MaterialPageRoute(
                    builder: (BuildContext context) => Sellitems())),
          ),
          title: Text("Recycle items"),
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

          // items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                InkWell(
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Images/Bottles.png')),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Bottles()));
                  },
                ),
                // name
                InkWell(
                  child: Center(
                      child: Text(
                    "Bottles",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                )
              ]),
              //papers
              Column(children: [
                InkWell(
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Images/Papers.png')),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    print("ok");
                  },
                ),
                // name
                InkWell(
                  child: Center(
                      child: Text(
                    "Papers",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                )
              ]),
            ],
          ),

          SizedBox(
            height: 25,
          ),

          // second row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                //  Pens

                InkWell(
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('Images/Pens.png')),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    print("ok");
                  },
                ),

                InkWell(
                  child: Center(
                      child: Text(
                    "Pens",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                )
              ]),

              //Metals

              Column(children: [
                InkWell(
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Images/Metals.png')),
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onTap: () {
                    print("ok");
                  },
                ),
                // name
                InkWell(
                  child: Center(
                      child: Text(
                    "Metals",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                )
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
