import 'package:flutter/material.dart';

Widget buildTopSection() {
  return Column(children: [
    Row(
      children: [
        Text(
          "Discover",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
        Spacer(),
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1535713875002-"
                  "d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMD9&auto=format&fit=crop&w=1000&q=80"),
            ),
            Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: 19,
                  width: 19,
                  child: Text("2", style: TextStyle(color: Colors.white70)),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid)),
                ))
          ],
        )
      ],
    ),
    SizedBox(height: 20),
    Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic)),
      ),
    )
  ]);
}

Widget buildRecentCard({String image, String title, String message}) {
  return Container(
    height: 90,
    width: 300,
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Row(
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.contain, image: NetworkImage(image))),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(message, style: TextStyle(fontSize: 18, color: Colors.grey))
              ],
            ),
          ),
        )
      ],
    ),
  );
}
