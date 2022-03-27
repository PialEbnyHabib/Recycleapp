import 'package:flutter/material.dart';

void main() => runApp(cart());

class cart extends StatelessWidget {
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
          const Center(
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ]),
      ),
    );
  }
}
