import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
    );
  }
}