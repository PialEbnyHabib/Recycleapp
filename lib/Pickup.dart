// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_declarations, deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:recylce/Home.dart';
import 'package:url_launcher/url_launcher.dart';

final List data = [
  {
    "title": "Image 1",
    "url":
        "https://ecocycle.com.au/wp-content/uploads/2019/04/Why-recycling-is-important-for-the-future.jpg"
  },
  {
    "title": "Image 2",
    "url":
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F23%2F2021%2F04%2F28%2Frecycling-for-money-2000.jpg"
  },
  {
    "title": "Image 3",
    "url":
        "https://media.generalkinematics.com/wp-content/uploads/2014/04/plastic-recycling-955x500.png"
  },
  {
    "title": "Image 4",
    "url":
        "https://media.greenmatters.com/brand-img/d-9yrYj4m/0x0/why-is-recycling-important-1587135431361.jpg"
  },
  {
    "title": "Image 5",
    "url":
        "https://ecocycle.com.au/wp-content/uploads/2019/08/Fun-Facts_-Why-is-recycling-important_.jpg"
  },
  {
    "title": "Image 6",
    "url":
        "https://thumbs.dreamstime.com/b/recycle-waste-bins-different-trash-types-color-containers-sorting-wastes-organic-trash-paper-can-glass-plastic-bottle-150034531.jpg"
  },
];

void main() => runApp(Pickup());

class Pickup extends StatelessWidget {
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
          title: const Text("Pickup"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Column(
              children: [
                // Implement the image carousel
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 400),
                    height: MediaQuery.of(context).size.height / 4.5,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: data.map((item) {
                    return GridTile(
                      child: Image.network(item["url"], fit: BoxFit.contain),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromARGB(255, 219, 250, 222),
                child: const Text(
                  "We are on a mission to make Recycling easier for everyone. At the moment , our power pickup service is not yet available in every area. So in the meantime keep your city clean by using a local Trash management system. Recycling couldn't be easier!",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    child: Container(
                      height: 44,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(11),
                          topRight: Radius.circular(11),
                          bottomLeft: Radius.circular(11),
                          bottomRight: Radius.circular(11),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Contact your local\ntrash management",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      final url = 'https://azizu.com/';

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: true, // ios
                          forceWebView: true, // Android
                          enableJavaScript: true, // Android
                        );
                      }
                    })
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
