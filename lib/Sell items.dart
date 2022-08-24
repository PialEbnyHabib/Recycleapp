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
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => Home())),
          ),
          title: Text("Sell items"),
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
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Material(
                    child: Ink.image(
                      width: 120,
                      height: 120,
                      image: AssetImage('Images/Recyclable.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProductCategory()));
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Material(
                    child: Ink.image(
                      width: 120,
                      height: 120,
                      image: AssetImage('Images/Used Product.png'),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      UsedItems()));
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 65),
          Column(
            children: [
              // Implement the image carousel
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
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
        ]),
      ),
    );
  }
}
