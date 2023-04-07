import 'package:flutter/material.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class CoachProfilePage extends StatefulWidget {
  const CoachProfilePage({super.key});

  @override
  State<CoachProfilePage> createState() => _CoachProfilePageState();
}

class _CoachProfilePageState extends State<CoachProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
      title: Text('Pick Up Player'),
    )));
  }
}
