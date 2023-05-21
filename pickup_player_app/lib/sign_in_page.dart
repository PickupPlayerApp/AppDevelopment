import 'package:flutter/material.dart';
import 'package:pickup_player_app/new_user_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:pickup_player_app/profile_page_selector.dart';
import 'package:pickup_player_app/forgot_password_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pickup_player_app/new_coach_info_page.dart';
import 'package:pickup_player_app/new_player_info_page.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/player_model.dart';
import 'package:pickup_player_app/coach_profile.dart';
import 'package:pickup_player_app/player_profile.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var dbref = FirebaseDatabase.instance.ref().child('Users').child('Coaches').child('team email');
  
  get snapshot => null;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 128, 186, 233),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 185, 220),
        title: const Text(
          'PickupPlayer \n App',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 18, 50, 106)),
        ),
      ),
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return signinpageUIWidget();
          } else {
            return signinpageUIWidget();
          }
        },
        ),
    );
  }

  Widget signinpageUIWidget(){
    return Form(
      child: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(10),
          child: Column(
            children:  [
              const Text(
                'Pickup Player \n App',
                 textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 18, 50, 106),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: emailController,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'Email'),
               ),
               TextField(
                  controller: passwordController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.done,
                  decoration:  const InputDecoration(labelText: 'Password'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                icon: const Icon (Icons.lock_open, size: 32),
                label: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: signIn,
               ),
                  ),
                Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const ForgotPasswordPage();
                      })));
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromARGB(255, 18, 50, 106), fontSize: 20),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 80, 40, 0),
                child: Center(
                  child: Text (
                    "Don't have an account", 
                    style: TextStyle(
                          color: Color.fromARGB(255, 18, 50, 106),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                    ),
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const NewUserPage();
                      })));
                    },
                    child: const Text(
                      'Sign Up Here!',
                      style: TextStyle(color: Color.fromARGB(255, 19, 114, 35), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        )
      )
    );
  }
  Future signIn() async {
    /*await FirebaseAuth.instance.signInWithEmailAndPassword(
      email:  emailController.text.trim(),
      password: passwordController.text.trim(),
    );*/
    if (CoachModel.teamEmail == emailController.text){
        if (CoachModel.password == passwordController.text){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CoachProfilePage();
                }));
        }
      }
    if (PlayerModel.email == emailController.text){
      if (PlayerModel.password == passwordController.text){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PlayerProfilePage();
                }));
      }
    }

    // ignore: use_build_context_synchronously
    /*Navigator.push(context, 
      MaterialPageRoute(builder: (context) =>  const ProfilePageSelector()));*/
    
  }

  
}
