import 'package:flutter/material.dart';
import 'package:recylce/Sell items.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Recycle"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Sell Items",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Sellitems()));
                },
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Buy Items",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ]),
      ),
    );
  }
}
