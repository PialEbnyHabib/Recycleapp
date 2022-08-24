// ignore_for_file: unused_import, unnecessary_import, duplicate_import, use_key_in_widget_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:recylce/Buy%20items.dart';
import 'package:recylce/Home.dart';
import "package:recylce/Recycle Items.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recylce/Chat/Chatpage.dart';
import 'package:recylce/bottom_nav_controller.dart';

class Chatlist extends StatefulWidget {
  const Chatlist();
  @override
  Chatlistuser createState() => Chatlistuser();
}

class Chatlistuser extends State<Chatlist> {
  //final databaseReference = FirebaseFirestore.instance;

  final List _Users = [];
  final _firestoreInstance = FirebaseFirestore.instance;

  fetchUsers() async {
    QuerySnapshot qn =
        await _firestoreInstance.collection("users-form-data").get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _Users.add({
          "Name": qn.docs[i]["name"],
          "Age": qn.docs[i]["age"],
          "Gender": qn.docs[i]["gender"],
        });
      }
    });

    return qn.docs;
  }

  @override
  void initState() {
    fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => BottomNavController())),
          ),
          title: const Text("Users"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
        ),

        //fetch product
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 6,
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

            //show fetching products
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _Users.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Chatpage(_Users[index]))),
                      child: Card(
                        elevation: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${_Users[index]["Name"]}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Age:${_Users[index]["Age"].toString()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Gender:${_Users[index]["Gender"].toString()}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
