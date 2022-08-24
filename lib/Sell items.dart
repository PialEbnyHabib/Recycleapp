import 'package:flutter/material.dart';
import 'package:recylce/Home.dart';
import "package:recylce/Recycle Items.dart";
import "package:recylce/Used Items.dart";
import "package:recylce/Used Items.dart";
import 'package:recylce/Product_category.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(Sellitems());

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

class Sellitems extends StatelessWidget {
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
          title: const Text("Sell items"),
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
            height: 45,
          ),
          Column(
            children: [
              // Implement the image carousel
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 400),
                  height: MediaQuery.of(context).size.height / 5,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: data.map((item) {
                  return GridTile(
                    child: Image.network(item["url"], fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Container(
                  color: const Color.fromARGB(255, 211, 255, 209),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color.fromARGB(255, 211, 255, 209),
                          child: Material(
                            child: Ink.image(
                              width: 53,
                              height: 53,
                              image: const AssetImage('Images/recycle.ico'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const ProductCategory()));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: InkWell(
                          child: Container(
                              color: const Color.fromARGB(255, 211, 255, 209),
                              child: const Text(
                                'Recycle Items',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              )),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ProductCategory()));
                          },
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 75,
                          height: 70,
                          child: Center(
                            child: Material(
                              child: Ink.image(
                                width: 25,
                                height: 25,
                                image: const AssetImage('Images/arrow.ico'),
                                fit: BoxFit.cover,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const ProductCategory()));
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: const Color.fromARGB(255, 211, 255, 209),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: const Color.fromARGB(255, 211, 255, 209),
                          child: Material(
                            child: Ink.image(
                              width: 53,
                              height: 53,
                              image: const AssetImage('Images/used.ico'),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const UsedItems()));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: InkWell(
                          child: Container(
                              color: const Color.fromARGB(255, 211, 255, 209),
                              child: const Text(
                                'Used Items',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              )),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const UsedItems()));
                          },
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white24,
                          width: 75,
                          height: 70,
                          child: Center(
                            child: Material(
                              child: Ink.image(
                                width: 25,
                                height: 25,
                                image: const AssetImage('Images/arrow.ico'),
                                fit: BoxFit.cover,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const UsedItems()));
                                  },
                                ),
                              ),
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
        ]),
      ),
    );
  }
}
