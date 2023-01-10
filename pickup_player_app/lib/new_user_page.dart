// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:pickup_player_app/new_coach_info_page.dart';
import 'package:pickup_player_app/new_player_info_page.dart';

class NewUserPage extends StatefulWidget {
  const NewUserPage({super.key});

  @override
  State<NewUserPage> createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 75,
          child: Stack(
            children: const [
              Positioned(
                bottom: 0,
                right: 110,
                child: Text(
                  'Pickup Player \n App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 61, 96, 238),
                      fontSize: 30.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: Stack(
            children: const [
              Positioned(
                bottom: 0,
                right: 165,
                child: Text(
                  'I am a ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 96, 238),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                right: 80,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size.fromWidth(250),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PlayerInfoPage();
                    }));
                  },
                  child: const Text(
                    'Player',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
          child: Stack(
            children: const [
              Positioned(
                bottom: 0,
                right: 195,
                child: Text(
                  'Or',
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 96, 238),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                right: 80,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size.fromWidth(250),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CoachInfoPage();
                    }));
                  },
                  child: const Text(
                    'Coach',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
