import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          elevation: 3.0,
          shadowColor: const Color.fromARGB(255, 213, 213, 213),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  teamInfo("Team A"),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 1,
                      color: const Color.fromARGB(255, 200, 200, 200),
                      indent: 40,
                    ),
                  ),
                  teamInfo("Team B"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: SizedBox(width: 170, child: button("Reset")),
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100, 40),
          backgroundColor: Colors.orange,
          elevation: 3.0,
          shadowColor: const Color.fromARGB(255, 213, 213, 213),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5,
            ), // Adjust the radius as needed
          ),
        ),
        child: Text(info, style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget teamInfo(String teamName) {
    return 
      
       Column(
        children: [
          Text(teamName, style: TextStyle(fontSize: 32)),
          Text("0", style: TextStyle(fontSize: 150)),
          button("Add 1 Point  "),
          button("Add 2 Points"),
          button("Add 3 Points"),
        ],
    );
  }
}
