import 'package:flutter/material.dart';
import 'package:pickup_player_app/sign_in_page.dart';

class PlayerInfoPage extends StatefulWidget {
  const PlayerInfoPage({super.key});

  @override
  State<PlayerInfoPage> createState() => _PlayerInfoPageState();
}

class _PlayerInfoPageState extends State<PlayerInfoPage> {
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
              child: Column(
            children: [
              const Text(
                'Please Enter the \n following information',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Player First Name',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Player Last Name',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Parent Name',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
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
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Username',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
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
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
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
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Player Age Group',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Primary Position',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Secondary Position',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Other Position',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Batting Side',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Batting Average',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Can you pitch',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Player Last Name',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'If yes, how many innings have \n you pitched?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'How many games have you \n pitched in?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'What age groups have you \n played in the past?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Do you currently play for a \n select/travel team',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'What select/travel teams have \n you played for?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'How long have you played \n select/travel baseball',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Can you attend practices?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'What dates are you availaible?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'How far will you travel?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'How far will you travel?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'What is you home Zip Code?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'This will remain confidential.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 13.0,
                      ),
                    ),
                  )),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Upload a profile photo?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Add anything to your bio?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 141, 185, 220),
                  ),
                ),
              ),
              SizedBox(
                  height: 80,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        right: 70,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            fixedSize: const Size.fromWidth(250),
                            backgroundColor:
                                const Color.fromARGB(255, 61, 96, 238),
                          ),
                          onPressed: () {
                            debugPrint('Elevated Button');
                          },
                          child: const Text(
                            'Sign Up!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 141, 185, 220),
                                fontSize: 25),
                          ),
                        ),
                      )
                    ],
                  )),
              const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 18, 50, 106),
                        fontSize: 17.0,
                      ),
                    ),
                  )),
              SizedBox(
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      right: 70,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size.fromWidth(250),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignInPage();
                          }));
                        },
                        child: const Text(
                          'Log in Here',
                          style: TextStyle(color: Colors.green, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
