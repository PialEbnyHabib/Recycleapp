// ignore_for_file: unused_import, unnecessary_import, duplicate_import, use_key_in_widget_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:recylce/Buy%20items.dart';
import 'package:recylce/Home.dart';
import "package:recylce/Recycle Items.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recylce/Product_details_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recylce/Sell%20items.dart';
import 'package:recylce/bottom_nav_controller.dart';

class Buyitemscategory extends StatefulWidget {
  const Buyitemscategory();
  @override
  _Buyitemscategory createState() => _Buyitemscategory();
}

class _Buyitemscategory extends State<Buyitemscategory> {
  //final databaseReference = FirebaseFirestore.instance;

  final List _Useditems = [];
  final _firestoreInstance = FirebaseFirestore.instance;

  fetchProductsdata() async {
    QuerySnapshot qn = await _firestoreInstance.collection("Used Items").get();
    setState(() {
      for (int u = 0; u < qn.docs.length; u++) {
        _Useditems.add({
          "image": qn.docs[u]["image"],
          "catagory": qn.docs[u]["catagory"],
          "Price": qn.docs[u]["Price"],
        });
      }
    });

    return qn.docs;
  }

  @override
  void initState() {
    fetchProductsdata();
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
                    builder: (BuildContext context) => Sellitems())),
          ),
          title: const Text("Used Products"),
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
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _Useditems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1),
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetails(_Useditems[index]))),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 2,
                              child: Container(
                                  child: Image.network(
                                      _Useditems[index]["image"])),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "${_Useditems[index]["catagory"]}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Price:${_Useditems[index]["Price"].toString()}",
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
