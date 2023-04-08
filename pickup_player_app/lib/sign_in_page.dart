import 'package:flutter/material.dart';
import 'package:pickup_player_app/new_user_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:pickup_player_app/forgot_password_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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
      body: _signinpageUIWidget(),
    );
  }

  Widget _signinpageUIWidget(){
    return Form(
      key: globalKey,
      child: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Pickup Player \n App',
                 textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 18, 50, 106),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
              ),
               FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "username",
                  "     Username",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "First Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                   
                  },
                  initialValue: "",
                  onChange: (val) {
                    //setState(() => playerFirstNameController.text = val);
                  },
                  borderColor: const Color.fromARGB(255, 4, 124, 10),
                  backgroundColor: const Color.fromARGB(255, 215, 217, 219),
                  fontSize: 14,
                  labelFontSize: 20,
                  labelFontColor: const Color.fromARGB(255, 18, 50, 106),
                  paddingLeft: 40,
                  paddingRight: 40,
                ),
                FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "password",
                  "     Password",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "First Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                   
                  },
                  initialValue: "",
                  onChange: (val) {
                    //setState(() => playerFirstNameController.text = val);
                  },
                  borderColor: const Color.fromARGB(255, 4, 124, 10),
                  backgroundColor: const Color.fromARGB(255, 215, 217, 219),
                  fontSize: 14,
                  labelFontSize: 20,
                  labelFontColor: const Color.fromARGB(255, 18, 50, 106),
                  paddingLeft: 40,
                  paddingRight: 40,
                ),
                 Padding(
                  padding:  const EdgeInsets.fromLTRB( 40, 40, 40, 0),
                  child: Center( 
                    child: SizedBox(
                      width: 300,
                      child: FormHelper.submitButton("Sign In!",
                        () {
                         if (validateAndSave()) {}
                    },
                    btnColor: Colors.green, borderColor: Colors.blue,
                    fontSize: 30
                    ),
                    )
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

   bool validateAndSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
