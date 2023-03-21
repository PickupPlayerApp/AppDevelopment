//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pickup_player_app/coach_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class CoachInfoPage extends StatefulWidget {
  const CoachInfoPage({super.key});

  @override
  State<CoachInfoPage> createState() => _CoachInfoPageState();
}

class _CoachInfoPageState extends State<CoachInfoPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  CoachModel coachModel = CoachModel();

  final coachFirstNameController = TextEditingController();
  final coachLastNameController = TextEditingController();
  final coachTeamNameController = TextEditingController();
  final coachTeamEmailController = TextEditingController();
  final coachPasswordController = TextEditingController();
  final coachTeamLevelController = TextEditingController();
  final coachTeamLocationController = TextEditingController();
  final coachWinLoseController = TextEditingController();
  final coachPracticeLocationController = TextEditingController();
  final coachPracticeTimeController = TextEditingController();
  final coachTryoutsLocationController = TextEditingController(); 
  final coachTryoutDateController = TextEditingController();
  final coachTryoutTimeController = TextEditingController();
  final coachTournamentLocationController = TextEditingController();
  final coachTournamentDateController = TextEditingController();
  final coachTournamentTimeController = TextEditingController();
  final coachTournamentPositionController = TextEditingController();
  
  late DatabaseReference dbRef;
  late DatabaseReference tryoutDbRef;

  //List<dynamic> position = [];
  //List<dynamic> teamLevel = [];

  //String? positionId;
  //String? teamLevelId;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Coaches');
    tryoutDbRef = FirebaseDatabase.instance.ref().child('Coaches/tryouts');

    coachModel.teamLevel.add({"id": "AA", "label": "AA"});
    coachModel.teamLevel.add({"id": "AAA", "label": "AAA"});
    coachModel.teamLevel.add({"id": "Major", "label": "Major"});

    coachModel.tryoutLocation = List<String>.empty(growable: true);
    coachModel.tryoutLocation!.add("");

    coachModel.tournamentLocation = List<String>.empty(growable: true);
    coachModel.tournamentLocation!.add("");

    coachModel.position.add({"id": "Pitcher", "label": "Pitcher"});
    coachModel.position.add({"id": "Catcher", "label": "Catcher"});
    coachModel.position.add({"id": "1st Base", "label": "1st Base"});
    coachModel.position.add({"id": "2nd Base", "label": "2nd Base"});
    coachModel.position.add({"id": "3rd Base", "label": "3rd Base"});
    coachModel.position.add({"id": "Shortstop", "label": "Shortstop"});
    coachModel.position.add({"id": "Left Field", "label": "Left Field"});
    coachModel.position.add({"id": "Right Field", "label": "Right Field"});
    coachModel.position.add({"id": "Center Field", "label": "Center Field"});
    coachModel.position.add({"id": "Designated Hitter", "label": "Designated Hitter"});
  }

  String email = '';
  String password = '';

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
      body: _coachInfoUiWidget(),
    );
  }

  Widget _coachInfoUiWidget() {
    return Form(
      key: globalKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Please Enter the \n Following Information',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "firstname",
                "First Name",
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
                    setState(() => coachFirstNameController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "lastname",
                "Last Name",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Last Name can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachLastNameController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "teamname",
                "Team Name",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Team Name can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachTeamNameController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "teamEmail",
                "Team Email",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Team Email can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => email = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "confirmemail",
                "Confirm Email",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Confirm Email can't be empty";
                  }else if (onValidateVal != email) {
                      return "Emails must match.";
                    }
                    return null;
                  
                },
                (onSaveVal) {
                  coachModel.confirmEmail = onSaveVal;
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachTeamEmailController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "password",
                "Password",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Password can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => password = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "confirmpassword",
                "Confirm Password",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Confirm Password can't be empty";
                  }else if (onValidateVal != password) {
                      return "Emails must match.";
                    }
                    return null;
                  
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachPasswordController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Choose Team Level",
                  "",
                  coachModel.teamLevelId,
                  coachModel.teamLevel, (onChangedVal) {
                coachModel.teamLevelId = onChangedVal;
                coachTeamLevelController.text = onChangedVal;
              }, (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please Select Team Level';
                }
              },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                  optionValue: "id",
                  optionLabel: "label"),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "teamlocation",
                "Team Location",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Last Name Can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachTeamLocationController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "winlose",
                "Win/Lose Rate",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Last Name Can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachWinLoseController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "practiceLocation",
                "Practice Location",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Last Name Can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachPracticeLocationController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "practicetime",
                "Practice Time",
                "",
                (onValidateVal) {
                  if (onValidateVal.isEmpty) {
                    return "Last Name Can't be empty";
                  }
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                  onChange: (val) {
                    setState(() => coachPracticeTimeController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              //_tryoutContainer(),
              //_tournamentContainer(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Upload a profile photo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              FormHelper.inputFieldWidgetWithLabel(
                context,
                "coachbio",
                "Add anything to your bio",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  coachModel.coachBio = onSaveVal;
                },
                initialValue: coachModel.coachBio ?? "",
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: FormHelper.submitButton("Save", () {
                    if (validateAndSave()) {
                      Map<String, dynamic> coach = {
                        'first name' : coachFirstNameController.text,
                        'last name' : coachLastNameController.text,
                        'team name' : coachTeamNameController.text,
                        'team email' : coachTeamEmailController.text,
                        'password' : coachPasswordController.text,
                        'team level' : coachTeamLevelController.text,
                        'team location' : coachTeamLocationController.text,
                        'win lose rate' : coachWinLoseController.text,
                        'practice location' : coachPracticeLocationController.text,
                        'practice time' : coachPracticeTimeController.text,
                      };
                      dbRef.push().set(coach);
                    }
                  }, btnColor: Colors.green, borderColor: Colors.blue),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: Center(
                  child: Text(
                    "Already Have an Account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const SignInPage();
                      })));
                    },
                    child: const Text(
                      'Log in Here',
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*Widget _tryoutContainer() {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'Tryouts',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [tryoutUI(index)],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: coachModel.tryoutLocation!.length,
        )
      ],
    );
  }

  Widget tryoutUI(index) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tryoutlocation_$index",
                "Location",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  coachModel.tryoutLocation![index] == onSaveVal;
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTryoutsLocationController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tryoutdate_$index",
                "Date",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTryoutDateController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tryouttime_$index",
                "Time",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTryoutTimeController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Visibility(
              visible: index == coachModel.tryoutLocation!.length - 1,
              child: SizedBox(
                width: 35,
                child: IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.green),
                  onPressed: () async {
                    addTryoutControl();
                    await dbRef.update({
                      'Coaches/tryouts' : {
                        'tryout' : {
                        'date' : coachTryoutDateController.text.length + 1,
                        'location' : coachTryoutsLocationController.text.length + 1,
                        'time' : coachTryoutTimeController.text.length + 1
                        }
                      }
                    });
                  },
                ),
              ),
            ),
            Visibility(
              visible: index > 0,
              child: SizedBox(
                width: 35,
                child: IconButton(
                  icon: const Icon(Icons.remove_circle, color: Colors.red),
                  onPressed: () {
                    removeTryoutControl(index);
                  },
                ),
              ),
            ),
          ],
        ));
  }

  void addTryoutControl() {
    setState(() {
      coachModel.tryoutLocation!.add("");
    });
    
  }

  void removeTryoutControl(index) {
    setState(() {
      if (coachModel.tryoutLocation!.length > 1) {
        coachModel.tryoutLocation!.removeAt(index);
      }
    });
  }

  Widget _tournamentContainer() {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'Tournament',
                  style: TextStyle(
                    color: Color.fromARGB(255, 18, 50, 106),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [tournamentUI(index)],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: coachModel.tournamentLocation!.length,
        )
      ],
    );
  }

  Widget tournamentUI(index) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tournamentlocation_$index",
                "Location",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTournamentLocationController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 11.5,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tournamentdate_$index",
                "Date",
                "",
                (onValidateVal) {
                  return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTournamentDateController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Flexible(
              child: FormHelper.inputFieldWidgetWithLabel(
                context,
                "tournamenttime_$index",
                "Time",
                "",
                (onValidateVal) {
                   return null;
                },
                (onSaveVal) {
                  
                },
                initialValue: "",
                 onChange: (val) {
                    setState(() => coachTournamentTimeController.text = val);
                  },
                borderColor: Colors.green,
                backgroundColor: Colors.lightBlue,
                fontSize: 14,
                labelFontSize: 14,
                paddingLeft: 0,
                paddingRight: 0,
              ),
            ),
            Flexible(
              child: FormHelper.dropDownWidgetWithLabel(
                context,
                  "Position",
                  "",
                  coachModel.positionId,
                  coachModel.position, (onChangedVal) {
                coachModel.positionId = onChangedVal;
                coachTournamentPositionController.text = onChangedVal;
              }, (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please Select Team Level';
                }
              },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  labelFontSize: 12,
                  paddingLeft: 0,
                  paddingRight: 0,
                  optionValue: "id",
                  optionLabel: "label"),
            ),
            Visibility(
              visible: index == coachModel.tournamentLocation!.length - 1,
              child: SizedBox(
                width: 35,
                child: IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.green),
                  onPressed: () {
                    addTournamentControl();
                  },
                ),
              ),
            ),
            Visibility(
              visible: index > 0,
              child: SizedBox(
                width: 35,
                child: IconButton(
                  icon: const Icon(Icons.remove_circle, color: Colors.red),
                  onPressed: () {
                    removeTournamentControl(index);
                  },
                ),
              ),
            ),
          ],
        ));
  }

  void addTournamentControl() {
    setState(() {
      coachModel.tournamentLocation?.add("");
    });
  }

  void removeTournamentControl(index) {
    setState(() {
      if (coachModel.tournamentLocation!.length > 1) {
        coachModel.tournamentLocation!.removeAt(index);
      }
    });
  }*/

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
