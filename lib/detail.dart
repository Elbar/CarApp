import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String name;
  final String description;

  const Detail({Key key, this.name, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back), onPressed: ()=> Navigator.pop(context)),
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
                                    child: Text("2",
                                        style:
                                            TextStyle(color: Colors.white70)),
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
                      SizedBox(height: 10),
                      Text(name,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Category",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(description,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height: 10),
                      Text(
                        "Type",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(description,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(height: 10),
                      Text(
                        "Description",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(description,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Since the market launch in 2015, around 60,000 examples of the Mercedes-Maybach S-Class have been delivered worldwide. In 2019, with around 12,000 units, more Mercedes-Maybach S-Class cars were sold than ever before. The growth rate in China was in double figures. Alongside China, the main sales markets in recent years have been Russia, South Korea, the USA and Germany. The new Mercedes-Maybach S-Class is set to continue this success story. It combines the perfection and high-tech solutions of the only recently presented Mercedes-Benz flagship model with the exclusivity and tradition of Maybach. The 18 centimetre longer wheelbase compared to the long variant of the Mercedes-Benz S-Class entirely benefits the rear. Thanks to Executive seats as standard and the Chauffeur package, the rear section becomes a comfortable working or resting area. They are complemented by exclusive details such as large areas of trim on the rear of the front seats and between the two rear passengers. In a number of markets, sales of the Mercedes-Maybach S-Class will commence before the end of this year. Germany will follow in spring 2021.",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView(
                    padding: EdgeInsets.all(30),
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCard(
                          title: 'Height', data: "1.12", icon: Icons.height),
                      buildCard(
                          title: 'Body Mass',
                          data: "16600kg",
                          icon: Icons.work_rounded),
                      buildCard(
                          title: 'Year', data: "2019", icon: Icons.date_range),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Text(
                        "Price:",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$ 32.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text(
                            "Buy now",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 100,
              top: 170,
              child: Container(
                height: 200,
                child: Hero(
                  tag: 12,
                  child: Image.network(
                      "https://purepng.com/public/uploads/large/purepng.com-mercedes-benz-gle-coupe-white-carcarvehicletransportmercedes-benz-961524660217nch4l.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildCard({String title, String data, IconData icon}) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 170,
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(icon, color: Colors.white),
            backgroundColor: Colors.amber,
            radius: 30,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                data,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
