// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_import, unnecessary_import, duplicate_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:recylce/Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recylce/Product_details_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(BuyCategory());

class BuyCategory extends StatefulWidget {
  const BuyCategory({Key? key}) : super(key: key);
  @override
  RecycleProduct createState() => RecycleProduct();
}

class RecycleProduct extends State<BuyCategory> {
  //final databaseReference = FirebaseFirestore.instance;

  final List _Product = [];
  final _firestoreInstance = FirebaseFirestore.instance;

  fetchProductsdata() async {
    QuerySnapshot qn =
        await _firestoreInstance.collection("Recycle items").get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _Product.add({
          "Image": qn.docs[i]["Image"],
          "Name": qn.docs[i]["Name"],
          "Price": qn.docs[i]["Price"],
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
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => Home())),
          ),
          title: Text("Buy Items"),
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
              height: 30,
            ),

            //show fetching products
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _Product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1),
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetails(_Product[index]))),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 2,
                              child: Container(
                                  child:
                                      Image.network(_Product[index]["Image"])),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "${_Product[index]["Name"]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Price:${_Product[index]["Price"].toString()}",
                              style: TextStyle(
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
