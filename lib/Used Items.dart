import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recylce/Sell%20items.dart';
import 'package:recylce/Used%20Items.dart';
import 'package:recylce/Uplode_successfull.dart';
import 'package:recylce/Home.dart';

class UsedItems extends StatefulWidget {
  const UsedItems({Key? key}) : super(key: key);

  @override
  State<UsedItems> createState() => _UsedItemsScreenState();
}

class _UsedItemsScreenState extends State<UsedItems> {
  // File? image;

  final TextEditingController _Controller = TextEditingController();
  final TextEditingController _Controller1 = TextEditingController();
  final TextEditingController _Controlle2 = TextEditingController();
  final TextEditingController _Controlle3 = TextEditingController();
  List<String> Catagory = ["Paper", "Metal", "Plastic", "Household", "Vehicle"];
  List<String> Price = [
    "500-1000",
    "1000-1500",
    "1500-2000",
    "2000-2500",
    "2500-3000"
  ];

  File? _image;

  CollectionReference UsedItems =
      FirebaseFirestore.instance.collection('Used Items');

  void addUsedItems() async {
    final imgUrl = await UploadImage(_image!);
    await UsedItems.add({
      'catagory': _Controller.text.trim(),
      'Price': _Controller1.text.trim(),
      'details': _Controlle2.text.trim(),
      'usedTime': _Controlle3.text.trim(),
      'uploadTimes': DateTime.now(),
      'image': imgUrl,
    });
  }

  Future UploadImage(File _image) async {
    String url;
    String imgId = DateTime.now().millisecondsSinceEpoch.toString();
    Reference reference = FirebaseStorage.instance
        .ref()
        .child("Used items")
        .child("product_$imgId");
    await reference.putFile(_image);
    url = await reference.getDownloadURL();
    return url;
  }

  final picker = ImagePicker();
  Future imagePicker() async {
    try {
      final pick = await picker.pickImage(source: ImageSource.camera);

      setState(() {
        if (pick != null) {
          _image = File(pick.path);
        } else {
          print("No image selected");
        }
      });
    } catch (e) {
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
              MaterialPageRoute(builder: (BuildContext context) => Home())),
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
                  child: _image == null
                      ? const Center(child: Text("No Image Selected"))
                      : Image.file(
                          _image!,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 4,
                        ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 225, 235, 226),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onTap: () {
                  imagePicker();
                },
              ),

              const SizedBox(
                height: 10,
              ),

              // button
              const Text("Select Image"),
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

          // Catagory selection

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controller,
              readOnly: true,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 20, right: 20),
                hintText: "Select Catagory",
                suffixIcon: DropdownButton<String>(
                  isExpanded: true,
                  elevation: 0,
                  // value: _Controller.text,
                  items: Catagory.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                      onTap: () {
                        setState(() {
                          _Controller.text = value;
                        });
                      },
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
          ),

          // END of category selection
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

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: _Controller1,
              readOnly: true,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 2, 4, 7),
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 20, right: 20),
                hintText: "Select Price",
                suffixIcon: DropdownButton<String>(
                  isExpanded: true,
                  elevation: 0,
                  // value: _Controller1.text,
                  items: Price.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value.toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      onTap: () {
                        setState(() {
                          _Controller1.text = value;
                        });
                      },
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
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
              UploadImage(_image!);
              addUsedItems();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UplodeSuccess(),
                ),
              );
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
