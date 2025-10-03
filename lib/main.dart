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
            Row(
              children: [
                teamInfo("Team A"),
                teamInfo("Team B"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String info) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
        ),
      ),
      child: Text(info, style: TextStyle(color: Colors.white)),
    );
  }

  Widget teamInfo(String teamName) {
    return Column(
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
