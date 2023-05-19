

import 'package:flutter/material.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/new_coach_info_page.dart';

class PlayerProfilePage extends StatefulWidget {

  const PlayerProfilePage({super.key});

  @override
  State<PlayerProfilePage> createState() => _PlayerProfilePageState();
}

class _PlayerProfilePageState extends State<PlayerProfilePage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  PlayerModel playerModel = PlayerModel();



  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 128, 186, 233),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 141, 185, 220),
          title: const Text(
            'PickupPlayer \n App',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 18, 50, 106)),
          ),
        ),
        body: SingleChildScrollView (child: coachprofilepageWidget(),)
    );
  }

  Widget coachprofilepageWidget(){
    return(
        Column(
          children:  [
            Container(
              color: const Color.fromARGB(255, 11, 83, 190),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: Row(
                children: const [
                  Text('Player Name                           ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 199, 182)
                    ),
                  ),
                  Text('Email',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 199, 182)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:  [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text(playerModel.firstName,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.email,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 11, 83, 190),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                children: const [
                  Text('Category                       ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 199, 182)
                    ),
                  ),
                  Text('Response',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 199, 182)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text('Batting Average',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.battingAverage,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text('Past Teams',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.pastTeams,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: Text('Time Played',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.howLongPlayed,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text('Dates Available',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.datesAvailaible,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text('Zipcode',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.zipCode,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 128, 186, 233),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: Row(
                children:[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text('Player Bio',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(playerModel.playerBio,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );

  }
}
