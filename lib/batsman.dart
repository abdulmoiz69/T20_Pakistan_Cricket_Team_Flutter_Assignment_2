
class Batsman {
  final String name;
  final String role;
  final String dob;
  final int matches;
  final int runs;
  //final String imageUrl;

  Batsman({
    required this.name,
    required this.role,
    required this.dob,
    required this.matches,
    required this.runs,
    //required this.imageUrl,
  });
}


class Bowlers {
  final String name;
  final String role;
  final String dob;
  final int matches;
  final int wickets;

  Bowlers({
    required this.name,
    required this.role,
    required this.dob,
    required this.matches,
    required this.wickets,
  });
}


// Sample batsman data
List<Batsman> pakistanBatsmen = [
  Batsman(name: "Baber Azam", role: "Right-Handed Batsman", dob: "15th October 1994",matches:109, runs: 3698 ),
  Batsman(name: "Mohammad Rizwan (WK)", role: "Right-Handed Batsman", dob: "1st June 1992",matches:90, runs: 2981 ),
  Batsman(name: "Saim Ayub", role: "Left-Handed Batsman", dob: "24th May 2002",matches:12, runs:162 ),
  Batsman(name: "Fakhar Zaman", role: "Left-Handed Batsman", dob: "10th April 1990",matches:81, runs:1559 ),
  Batsman(name: "Iftikhar Ahmed", role: "Right-Handed Batsman", dob: "3rd September 1990",matches:54, runs:858 ),
  Batsman(name: "Azam Khan (WK)", role: "Right-Handed Batsman", dob: "10th August 1998",matches:16, runs:739 ),
  Batsman(name: "Haseebullah Khan (WK)", role: "Left-Handed Batsman", dob: "20th March 2003",matches:1, runs:0 ),
  Batsman(name: "Muhammad Nawaz", role: "Alrounder", dob: "21st March 1994",matches:60, runs:477 ),
  Batsman(name: "Sahibzada farhan", role: "Right-Handed Batsman", dob: "6th March 1996",matches: 5 , runs:60),
];

List<Bowlers> pakistanBowlers = [
  Bowlers(name: "Shaheen Afridi (C)", role: "Left-arm Fast Bowler", dob: "6th April 2000", matches: 57, wickets: 73),
  Bowlers(name: "Haris Rauf", role: "Right-arm Fast Bowler", dob: "7th November 1993",matches:66  , wickets:90 ),
  Bowlers(name: "Muhammad Wasim Jnr", role: "Right-arm Medium Fast Bowler", dob: "25th August 2001",matches:29  , wickets:36 ),
  Bowlers(name: "Aamir Jamal", role: "Right-arm Medium Fast Bowler", dob: "5th July 1996", matches:6 , wickets:2),
  Bowlers(name: "Abbas Afridi", role: "Right-arm Medium Fast Bowler", dob: "5th April 2001",matches:3 , wickets:5),
  Bowlers(name: "Usama Mir", role: "Right-arm Leg Spin Bowler", dob: "23rd December 1995",matches:3 , wickets:2 ),
  Bowlers(name: "Zaman Khan", role: "Right-arm Fast Bowler", dob: "10th September 2001",matches:9  , wickets:6 ),

];
