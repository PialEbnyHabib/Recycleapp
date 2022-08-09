// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:recylce/Electronics/Electric%20Wire.dart';
import 'package:recylce/Electronics/Electronic%20Devices.dart';
import 'package:recylce/Electronics/Hosehold%20Appliance.dart';
import 'package:recylce/Electronics/Kitchen%20Appliance.dart';
import 'package:recylce/Recycle Items.dart';

void main() => runApp(Electronics());

class Electronics extends StatelessWidget {
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
          title: Text("Electronics"),
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
                                  'Electronics',
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
                                  image: AssetImage('Images/electronics.ico'),
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
                      image: AssetImage('Images/electronic_devices.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ElectronicDevices()));
                        },
                      ),
                    ),
                  ),
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/electronic_household.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HouseholdAppliance()));
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
                        "Electronic Devices",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ElectronicDevices()));
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
                        "Household Appliance",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HouseholdAppliance()));
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
                      image: AssetImage('Images/kitchen.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      KitchenAppliance()));
                        },
                      ),
                    ),
                  ),
                  Material(
                    child: Ink.image(
                      height: 130,
                      width: 200,
                      image: AssetImage('Images/wires.jpg'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ElectricWires()));
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
                        "Kitchen Appliance",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              KitchenAppliance()));
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
                        "Electric Wires",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => ElectricWires()));
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
