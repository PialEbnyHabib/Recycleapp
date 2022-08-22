// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:recylce/Chat/Chatlist.dart';
import 'package:recylce/Chat/FetchUsers.dart';
import 'package:recylce/bottom_nav_controller.dart';

class Chatpage extends StatefulWidget {
  var _Users;
  Chatpage(this._Users);
  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => Chatlist())),
        ),
        title: Text(
          widget._Users['Name'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.green[400],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.face,
                    color: Colors.green[400],
                  ),
                  onPressed: () {}),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Type Something...",
                      hintStyle: TextStyle(color: Colors.green[400]),
                      border: InputBorder.none),
                ),
              ),
              IconButton(
                icon: Icon(Icons.photo_camera, color: Colors.green[400]),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.attach_file, color: Colors.green[400]),
                onPressed: () {},
              ),
              SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.green[400], shape: BoxShape.circle),
                child: InkWell(
                  child: Icon(
                    Icons.keyboard_voice,
                    color: Colors.white,
                  ),
                  onLongPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
