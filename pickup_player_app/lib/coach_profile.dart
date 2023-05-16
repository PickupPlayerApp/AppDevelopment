

import 'package:flutter/material.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/new_coach_info_page.dart';

class CoachProfilePage extends StatefulWidget {

  const CoachProfilePage({super.key});

  @override
  State<CoachProfilePage> createState() => _CoachProfilePageState();
}

class _CoachProfilePageState extends State<CoachProfilePage> {
GlobalKey<FormState> globalKey = GlobalKey<FormState>();
CoachModel coachModel = CoachModel();



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
                Text('Coach Name                           ',
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
                  child: Text(CoachModel.coachName,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  ),
                ),
               Text(CoachModel.teamEmail,
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
                  child: Text('Win-Loss Rate',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  ),
                ),
               Text(CoachModel.winLoss,
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
                  child: Text('Practice Time',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  ),
                ),
               Text(CoachModel.practiceTime,
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
                  child: Text('Practice Location',
                    style: TextStyle(
                      color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  ),
                ),
               Text(CoachModel.practiceLocation,
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
