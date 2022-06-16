import 'package:flutter/material.dart';
import 'package:recylce/Sell items.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
void main() => runApp(Home());

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Recycle"),
          backgroundColor: Colors.green[400],
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white), onPressed: () {}),
        ),

        // body

        body: Column(children: <Widget>[
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
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
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Sell Items",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Sellitems()));
                },
              ),
              SizedBox(width: 15),
              InkWell(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Buy Items",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                  )),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Column(
            children: [
              // Implement the image carousel
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 400),
                  height: MediaQuery.of(context).size.height / 4.5,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.vertical,
                ),
                items: data.map((item) {
                  return GridTile(
                    child: Image.network(item["url"], fit: BoxFit.contain),
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
