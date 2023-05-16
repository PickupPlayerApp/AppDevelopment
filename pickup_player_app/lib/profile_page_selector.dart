import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:pickup_player_app/coach_profile.dart';

class ProfilePageSelector extends StatefulWidget {
  const ProfilePageSelector({super.key});

  @override
  State<ProfilePageSelector> createState() => _ProfilePageSelectorState();
}

class _ProfilePageSelectorState extends State<ProfilePageSelector> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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
      body: Center (
        child: Column(children: [
            ElevatedButton(onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) =>  const CoachProfilePage()));
              }, 
            child: const Text("Coach"))
          ],
        )
      ),
    );
  }
}