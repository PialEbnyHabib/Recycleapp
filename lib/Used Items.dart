// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors, avoid_print

import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recylce/Sell%20items.dart';

class UsedItems extends StatefulWidget {
  const UsedItems({Key? key}) : super(key: key);

  @override
  State<UsedItems> createState() => _UsedItemsState();
}

class _UsedItemsState extends State<UsedItems> {
  File? image;

  final TextEditingController _Controller = TextEditingController();
  final TextEditingController _Controller1 = TextEditingController();

  final TextEditingController _Controlle2 = TextEditingController();
  final TextEditingController _Controlle3 = TextEditingController();

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Failed to pick Image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => Sellitems())),
        ),
        title: const Text("Used Items"),
        backgroundColor: Colors.green[400],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
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
            height: 60,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: [
              //  Pens
              const Text(
                "Uplode your details",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 150,
                  child: image == null
                      ? const Center(child: Text("No Image Selected"))
                      : Image.file(
                          image!,
                          height: 160,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 225, 235, 226),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onTap: pickImage,
              ),

              const SizedBox(
                height: 10,
              ),

              // button
              Text("Select Image"),
            ]),
            const SizedBox(
              height: 25,
            ),
          ]),
          const SizedBox(
            height: 25,
          ),
          const InkWell(
            child: Center(
              child: Text(
                "Catagory",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controller,
              enableInteractiveSelection: true,
              obscureText: false,
              decoration: const InputDecoration(
                focusColor: Color.fromARGB(255, 239, 248, 245),
                hintText: "Select Catagory",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                // focusedBorder: OutlineInputBorder(
                //   // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //   borderSide: BorderSide(
                //     color: Color(0xffEFF3F8),
                //   ),
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
            child: Center(
              child: Text(
                "Price",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controller1,
              obscureText: false,
              decoration: const InputDecoration(
                focusColor: Color.fromARGB(255, 239, 248, 245),
                hintText: "Select price",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                // focusedBorder: OutlineInputBorder(
                //   // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //   borderSide: BorderSide(
                //     color: Color(0xffEFF3F8),
                //   ),
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
            child: Center(
              child: Text(
                "Details",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controlle2,
              obscureText: false,
              decoration: const InputDecoration(
                focusColor: Color.fromARGB(255, 239, 248, 245),
                hintText: "Select Details",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                // focusedBorder: OutlineInputBorder(
                //   // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //   borderSide: BorderSide(
                //     color: Color(0xffEFF3F8),
                //   ),
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const InkWell(
              child: Center(
            child: Text(
              "Used Time",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 15,
              ),
            ),
          )),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controlle3,
              obscureText: false,
              decoration: const InputDecoration(
                focusColor: Color.fromARGB(255, 239, 248, 245),
                hintText: "Select product used time",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                // focusedBorder: OutlineInputBorder(
                //   // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //   borderSide: BorderSide(
                //     color: Color(0xffEFF3F8),
                //   ),
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[400],
              ),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Map<String, dynamic> data = {
                "Catagory": _Controller.text,
                "Price": _Controller1.text,
                "Details": _Controlle2.text,
                "Used Time": _Controlle3.text,
                "Image": image.toString()
              };
              FirebaseFirestore.instance.collection(" Used items").add(data);
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ]),
      ),
    ));
  }
}
