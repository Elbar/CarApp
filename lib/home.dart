import 'package:flutter/material.dart';
import 'package:plant_app/detail.dart';
import 'package:plant_app/recommended_card.dart';
import 'package:plant_app/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colors = [Colors.teal, Colors.orange];
  List<String> names = ["Mercedes Benz", "Kia Rio"];
  List<String> descriptions = ["Super", "Great"];
  List<String> images = [
    "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
    "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  buildTopSection(),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Top",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("Indoor", style: TextStyle(color: Colors.grey)),
                        Text("Outdoor", style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 300,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Detail(name: names[index], description: descriptions[index]))),
                        child: RecommendedCard(
                            color: colors[index],
                            name: names[index],
                            desc: descriptions[index],
                            image: images[index]));
                  },
                )),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(children: [
                Text(
                  "Recently Viewed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ]),
            ),
            Container(
                height: 90,
                padding: EdgeInsets.only(bottom: 20),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildRecentCard(
                        image:
                            "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
                        title: "Mercedes",
                        message: "Benz"),
                    buildRecentCard(
                        image:
                            "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
                        title: "Mercedes",
                        message: "Benz"),
                    buildRecentCard(
                        image:
                            "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
                        title: "Mercedes",
                        message: "Benz"),
                    buildRecentCard(
                        image:
                            "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png",
                        title: "Mercedes",
                        message: "Benz"),
                  ],
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.qr_code_scanner_sharp),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.teal),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.list, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outline, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
