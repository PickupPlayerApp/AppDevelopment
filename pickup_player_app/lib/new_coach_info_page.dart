import 'package:flutter/material.dart';

class CoachInfoPage extends StatefulWidget {
  const CoachInfoPage({super.key});

  @override
  State<CoachInfoPage> createState() => _CoachInfoPageState();
}

class _CoachInfoPageState extends State<CoachInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 185, 220),
        title: const Text(
          'PickupPlayer \n App',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 18, 50, 106)),
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(children: const [
          Text(
            'Please Enter the \n following information',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 18, 50, 106),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Coach First Name',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Coach Last Name',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Team Name',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Team Email',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Confirm Email',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Win/Loss rate',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'When are practices?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Where are practices?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
          SizedBox(
            height: 30,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 141, 185, 220),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Where and when are the games?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 17.0,
                  ),
                ),
              )),
        ]),
      )),
    );
  }
}
