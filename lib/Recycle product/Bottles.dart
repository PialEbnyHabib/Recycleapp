import 'package:flutter/material.dart';
import 'package:recylce/Recycle Items.dart';
import 'package:recylce/cart.dart';

void main() => runApp(Bottles());

class Bottles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bottle counter',
      home: bottlecountState(),
    );
  }
}

class bottlecountState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<bottlecountState> {
  int count = 0;
  int total = 0;

  void incrementcount() {
    setState(() {
      count++;
      price();
    });
  }

  void decrementcount() {
    setState(() {
      count--;

      price();
    });
  }

  void price() {
    setState(() {
      total = count * 8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => Recycleitems())),
        ),
        title: Text("Bottle"),
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
            //  Bottle
            InkWell(
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('Images/Bottles.png')),
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onTap: () {
                print("ok");
              },
            ),
            // itemname
            InkWell(
              child: Center(
                  child: Text(
                "Bottles",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
              )),
            ),

            SizedBox(
              height: 25,
            ),

            // quantity and pricing.........................
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // increment
                FloatingActionButton(
                  backgroundColor: Colors.green[400],
                  child: Icon(Icons.remove),
                  onPressed: decrementcount,
                ),

                Text("${count}"),

                // decrement
                FloatingActionButton(
                  backgroundColor: Colors.green[400],
                  child: Icon(Icons.add),
                  onPressed: incrementcount,
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),

            //price

            Text("Total = ${total}"),

            SizedBox(
              height: 25,
            ),
            // Add to cart
            InkWell(
              child: Center(
                  child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cart()),
                  );
                },
                icon: Icon(Icons.shopping_cart, size: 18),
                label: Text("Add to cart"),
              )),
            ),

            SizedBox(
              height: 25,
            ),

            // Add Another Items
            InkWell(
              child: Center(
                  child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Recycleitems()),
                  );
                },
                icon: Icon(Icons.shopping_bag, size: 18),
                label: Text("Add another Items"),
              )),
            ),
          ]),
          SizedBox(
            height: 25,
          ),
        ]),
      ]),
    );
  }
}
