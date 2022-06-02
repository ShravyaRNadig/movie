import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MovieApp(),
  ));
}

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return Scaffold(
        backgroundColor: Color(0xff1C262f),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF1B2C38),
          title: Text('Movie App'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: ListView(
              children: [
                Container(
                  height: 40.0,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Chip(
                          label: Text("All",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Chip(
                          label: Text("Action",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Chip(
                          label: Text("Adventure",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.blueGrey,
                          padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Chip(
                          label: Text("Comedie",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.blueGrey,
                          padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Top Trends",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.0),
                Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "A Distance", "8.5/10", "assets/a_distance.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "Kenu Ruk", "8.0/10", "assets/kenu_ruk.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "Kitt Love", "8.5/10", "assets/kitty_love.jpg"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
              ],
            )));
  }
}

Widget MovieCard(String movieName, String rate, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Card(
          elevation: 0.0,
          child: Image.asset(imgPath,
              fit: BoxFit.fill, width: 130.0, height: 160.0),
        ),
        SizedBox(height: 5.0),
        Text(
          movieName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 5.0),
        Text(
          rate,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        )
      ],
    ),
  );
}
