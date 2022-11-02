import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Pickup Player \n App',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 18, 50, 106),
              fontSize: 30.5,
              fontWeight: FontWeight.bold),
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
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
              fillColor: Color.fromARGB(255, 222, 215, 215),
            ),
          ),
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
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
              fillColor: Color.fromARGB(255, 222, 215, 215),
            ),
          ),
        ),
        SizedBox(
          height: 60,
          child: Stack(
            children: [
              Positioned(
                bottom: -2,
                right: 70,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size.fromWidth(250),
                    backgroundColor: const Color.fromARGB(255, 61, 96, 238),
                  ),
                  onPressed: () {
                    debugPrint('Elevated Button');
                  },
                  child: const Text(
                    'Sign In!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 141, 185, 220),
                        fontSize: 20),
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
                bottom: 20,
                right: 70,
                child: TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size.fromWidth(250),
                  ),
                  onPressed: () {
                    debugPrint('Elevated Button');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromARGB(255, 61, 96, 238), fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
