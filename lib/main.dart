import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

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
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  teamInfo("Team A", teamAPoints),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 1,
                      color: const Color.fromARGB(255, 200, 200, 200),
                      indent: 40,
                    ),
                  ),
                  teamInfo("Team B", teamBPoints),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: SizedBox(
                width: 170,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: ElevatedButton(
                    onPressed: () {
                      reset();
                    },
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
                    child: Text("Reset", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String info, int pointsNum, int team) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () {
          addPoint(pointsNum, team);
        },
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

  Widget teamInfo(String teamName, int teamPoints) {
    return Column(
      children: [
        Text(teamName, style: TextStyle(fontSize: 32)),
        Text('$teamPoints', style: TextStyle(fontSize: 150)),
        button("Add 1 Point  ", 1, teamName == "Team A" ? 1 : 2),
        button("Add 2 Points", 2, teamName == "Team A" ? 1 : 2),
        button("Add 3 Points", 3, teamName == "Team A" ? 1 : 2),
      ],
    );
  }

  void addPoint(int pointsNum, int team) {
    if (team == 1) {
      teamAPoints += pointsNum;
      setState(() {
        
      });
    } else {
      teamBPoints += pointsNum;
      setState(() {
        
      });
    }
  }

  void reset() {
    teamAPoints = teamBPoints = 0;
    setState(() {
      
    });
  }
}
