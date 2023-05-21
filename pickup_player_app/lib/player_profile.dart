import 'package:flutter/material.dart';
import 'package:pickup_player_app/player_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';


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
        body: SingleChildScrollView (child: playerprofilepageWidget(),)
    );
  }

  Widget playerprofilepageWidget(){
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
                    child: Text(PlayerModel.playerName,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.email,
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
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: Row(
                children: const [
                  Text('Dates Available                           ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 199, 182)
                    ),
                  ),
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
                    child: Text(PlayerModel.datesAvailaible,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 11, 83, 190),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Row(
                children: const [
                  Text('Category                                        ',
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
                    child: Text('Secondary Position         ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.secondaryPositionId,
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
                    child: Text('Other Position                  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.otherPositionId,
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
                    child: Text('Batting Side                            ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.battingSideId,
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
                    child: Text('Can You Pitch                   ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.canYouPitchId,
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
                    child: Text('Last Age Group                 ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.pastAgeGroupId,
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
                    child: Text('Past Teams                       ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.pastTeams,
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
                    child: Text('Career Length                   ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.howLongPlayed,
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
                    child: Text('Attend Practice                 ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 13, 226)
                      ),
                    ),
                  ),
                  Text(PlayerModel.attendPracticeId,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 10, 13, 226)
                    ),
                  )
                ],
              ),
            ),
            Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                icon: const Icon (Icons.lock_open, size: 32),
                label: const Text(
                  'Log Out ',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInPage();
                }));
                }
               ),
                  ),
          ],
        )
    );

  }
}
