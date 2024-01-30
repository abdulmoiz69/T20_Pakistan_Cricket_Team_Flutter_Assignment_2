// batsman_list.dart
import 'package:flutter/material.dart';
import 'batsman.dart';

class BatsmanList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Combine batsmen and bowlers into a single list
    List<dynamic> combinedList = [...pakistanBatsmen, ...pakistanBowlers];

    return Scaffold(
      appBar: AppBar(
        title: Text('Pakistan T20 Cricket Team 2024'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: ListView.builder(
          itemCount: combinedList.length,
          itemBuilder: (context, index) {
            String imageUrl = "";

            // Use a conditional statement to determine whether to display batsman or bowler data
            if (combinedList[index] is Batsman) {
              // Display batsman data
              Batsman batsman = combinedList[index] as Batsman;
              //imageUrl = batsman.image;
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.lightGreenAccent,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(batsman.image),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    batsman.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'Role: ${batsman.role}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'DOB: ${batsman.dob}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Matches: ${batsman.matches}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Runs: ${batsman.runs}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            } else if (combinedList[index] is Bowlers) {
              // Display bowler data
              Bowlers bowler = combinedList[index] as Bowlers;
              // ... (if needed, you can set a default image for bowlers)
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.lightGreenAccent,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(bowler.image),
                    backgroundColor: Colors.white,
                  ),
                  title: Text(
                    bowler.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'Role: ${bowler.role}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'DOB: ${bowler.dob}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Matches: ${bowler.matches}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Wickets: ${bowler.wickets}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            }

            return SizedBox.shrink(); // Placeholder, you can modify this based on your needs
          },
        ),
      ),
    );
  }
}
