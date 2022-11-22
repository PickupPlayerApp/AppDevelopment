import 'package:flutter/material.dart';
import 'package:pickup_player_app/new_user_page.dart';
import 'sign_in_page.dart';

void main() {
  runApp(const PickupPlayer());
}

class PickupPlayer extends StatelessWidget {
  const PickupPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 141, 185, 220)),
      home: const OpeningPage(),
    );
  }
}

class OpeningPage extends StatefulWidget {
  const OpeningPage({super.key});

  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
            const Text(
              '\n Are you a',
              style: TextStyle(
                color: Color.fromARGB(255, 18, 50, 106),
                fontSize: 20.0,
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size.fromWidth(200),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignInPage();
                }));
              },
              child: const Text(
                'Returning User',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            const Text(
              'Or',
              style: TextStyle(
                color: Color.fromARGB(255, 18, 50, 106),
                fontSize: 20.0,
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size.fromWidth(200),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NewUserPage();
                }));
              },
              child: const Text(
                'New User',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
