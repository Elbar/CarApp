import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
