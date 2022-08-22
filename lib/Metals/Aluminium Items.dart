// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:recylce/Metals.dart';
import "package:recylce/Used Items.dart";

void main() => runApp(AluminiumItems());

class AluminiumItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => Metals())),
          ),
          title: const Text("Aluminium Items"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('Images/icon.png')),
                      color: Colors.green[400],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(110),
                        bottomRight: Radius.circular(110),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: Ink.image(
                    height: 190,
                    width: 495,
                    image: AssetImage('Images/can.jpg'),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white30,
              child: Text(
                "Dear user, your unused, disposable Aluminium Cans can be recycled. For only 50 taka a bag, we will collect your recyclables from your door, on demand. Recycling couldn't be easier!",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white30,
              child: Text(
                "Help us, collecting your recyclables by posting your items!",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Post Now",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                      ),
                    )),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => UsedItems()));
                  },
                ),
              ],
            ),
          ].reversed.toList(),
        ),
      ),
    );
  }
}
