import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recylce/Chat.dart';
import 'package:recylce/cart.dart';
import 'package:recylce/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;
  final pages = [Home(), Chat(), cart()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green[400],
            iconSize: 40,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
            ],
            onTap: (index) {
              setState(
                () {
                  _currentindex = index;
                },
              );
            },
          ),
          body: pages[_currentindex]),
    );
  }
}
