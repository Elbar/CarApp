import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final Color color;
  final String name;
  final String desc;
  final String image;

  const RecommendedCard({Key key, this.color, this.name, this.desc, this.image}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 100,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              image,
              height: 200),
          SizedBox(height: 10),
          Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                desc,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 4),
                child: Text(
                  '\$ 34000',
                  style: TextStyle(
                      fontSize: 17, color: color),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
