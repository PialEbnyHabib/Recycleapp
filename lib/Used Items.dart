import 'package:flutter/material.dart';
import 'package:recylce/Home.dart';
import 'package:recylce/Sell items.dart';

void main() => runApp(Useditems());

class Useditems extends StatelessWidget {
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
          height: 60,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            //  Pens

            InkWell(
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 235, 226),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onTap: () {
                print("ok");
              },
            ),

            SizedBox(
              height: 25,
            ),

            InkWell(
              child: Center(
                  child: Text(
                "Uplode your Items Photo",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              )),
            ),

            SizedBox(
              height: 25,
            ),

            // button
            InkWell(
              child: Center(
                  child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.image, size: 18),
                label: Text("Uplode"),
              )),
            ),
          ]),
          SizedBox(
            height: 25,
          ),
        ]),
      ]),
    ));
  }
}
