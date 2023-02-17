import 'package:flutter/material.dart';
import 'package:pickup_player_app/player_model.dart';
import 'package:pickup_player_app/sign_in_page.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class PlayerInfoPage extends StatefulWidget {
  const PlayerInfoPage({super.key});

  @override
  State<PlayerInfoPage> createState() => _PlayerInfoPageState();
}

class _PlayerInfoPageState extends State<PlayerInfoPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  PlayerModel playerModel = PlayerModel();

  /*List<dynamic> playerAgeGroup = [];
  List<dynamic> primaryPosition = [];
  List<dynamic> secondaryPosition = [];
  List<dynamic> otherPosition = [];
  List<dynamic> battingSide = [];
  List<dynamic> canYouPitch = [];
  List<dynamic> pastAgeGroup = [];
  List<dynamic> currentlyPlay = [];
  List<dynamic> attendPractice = [];
  List<dynamic> distanceTravel = [];

  String? playerAgeGroupId;
  String? primaryPositionId;
  String? secondaryPositionId;
  String? otherPositionId;
  String? battingSideId;
  String? canYouPitchId;
  String? pastAgeGroupId;
  String? currentlyPlayId;
  String? attendPracticeId;
  String? distanceTravelId;*/

  @override
  void initState() {
    super.initState();

    playerModel.playerAgeGroup.add({"id": 1, "label": "8"});
    playerModel.playerAgeGroup.add({"id": 2, "label": "9"});
    playerModel.playerAgeGroup.add({"id": 3, "label": "10"});
    playerModel.playerAgeGroup.add({"id": 4, "label": "11"});
    playerModel.playerAgeGroup.add({"id": 5, "label": "12"});
    playerModel.playerAgeGroup.add({"id": 6, "label": "13"});
    playerModel.playerAgeGroup.add({"id": 7, "label": "14"});

    playerModel.primaryPosition.add({"id": 1, "label": "N/A"});
    playerModel.primaryPosition.add({"id": 2, "label": "Pitcher"});
    playerModel.primaryPosition.add({"id": 3, "label": "Catcher"});
    playerModel.primaryPosition.add({"id": 4, "label": "1st Base"});
    playerModel.primaryPosition.add({"id": 5, "label": "2nd Base"});
    playerModel.primaryPosition.add({"id": 6, "label": "3rd Base"});
    playerModel.primaryPosition.add({"id": 7, "label": "Shortstop"});
    playerModel.primaryPosition.add({"id": 8, "label": "Left Field"});
    playerModel.primaryPosition.add({"id": 9, "label": "Right Field"});
    playerModel.primaryPosition.add({"id": 10, "label": "Center Field"});
    playerModel.primaryPosition.add({"id": 11, "label": "Designated Hitter"});

    playerModel.secondaryPosition.add({"id": 1, "label": "N/A"});
    playerModel.secondaryPosition.add({"id": 2, "label": "Pitcher"});
    playerModel.secondaryPosition.add({"id": 3, "label": "Catcher"});
    playerModel.secondaryPosition.add({"id": 4, "label": "1st Base"});
    playerModel.secondaryPosition.add({"id": 5, "label": "2nd Base"});
    playerModel.secondaryPosition.add({"id": 6, "label": "3rd Base"});
    playerModel.secondaryPosition.add({"id": 7, "label": "Shortstop"});
    playerModel.secondaryPosition.add({"id": 8, "label": "Left Field"});
    playerModel.secondaryPosition.add({"id": 9, "label": "Right Field"});
    playerModel.secondaryPosition.add({"id": 10, "label": "Center Field"});
    playerModel.secondaryPosition.add({"id": 11, "label": "Designated Hitter"});

    playerModel.otherPosition.add({"id": 1, "label": "N/A"});
    playerModel.otherPosition.add({"id": 2, "label": "Pitcher"});
    playerModel.otherPosition.add({"id": 3, "label": "Catcher"});
    playerModel.otherPosition.add({"id": 4, "label": "1st Base"});
    playerModel.otherPosition.add({"id": 5, "label": "2nd Base"});
    playerModel.otherPosition.add({"id": 6, "label": "3rd Base"});
    playerModel.otherPosition.add({"id": 7, "label": "Shortstop"});
    playerModel.otherPosition.add({"id": 8, "label": "Left Field"});
    playerModel.otherPosition.add({"id": 9, "label": "Right Field"});
    playerModel.otherPosition.add({"id": 10, "label": "Center Field"});
    playerModel.otherPosition.add({"id": 11, "label": "Designated Hitter"});

    playerModel.battingSide.add({"id": 1, "label": "Right"});
    playerModel.battingSide.add({"id": 2, "label": "Left"});

    playerModel.canYouPitch.add({"id": 1, "label": "Yes"});
    playerModel.canYouPitch.add({"id": 2, "label": "No"});

    playerModel.pastAgeGroup.add({"id": 1, "label": "8"});
    playerModel.pastAgeGroup.add({"id": 2, "label": "9"});
    playerModel.pastAgeGroup.add({"id": 3, "label": "10"});
    playerModel.pastAgeGroup.add({"id": 4, "label": "11"});
    playerModel.pastAgeGroup.add({"id": 5, "label": "12"});
    playerModel.pastAgeGroup.add({"id": 6, "label": "13"});
    playerModel.pastAgeGroup.add({"id": 7, "label": "14"});

    playerModel.currentlyPlay.add({"id": 1, "label": "Yes"});
    playerModel.currentlyPlay.add({"id": 2, "label": "No"});

    playerModel.attendPractice.add({"id": 1, "label": "Yes"});
    playerModel.attendPractice.add({"id": 2, "label": "No"});

    playerModel.distanceTravel.add({"id": 1, "label": "10 miles"});
    playerModel.distanceTravel.add({"id": 2, "label": "20 miles"});
    playerModel.distanceTravel.add({"id": 3, "label": "30 miles"});
    playerModel.distanceTravel.add({"id": 4, "label": "40 miles"});
    playerModel.distanceTravel.add({"id": 5, "label": "50 miles"});
  }

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
      body: _playerInfoUiWidget(),
    );
  }

  Widget _playerInfoUiWidget() {
    return Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
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
                  "Player First Name",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "First Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.firstName = onSaveVal;
                  },
                  initialValue: playerModel.firstName ?? "",
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
                  "Player Last Name",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Last Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.lastName = onSaveVal;
                  },
                  initialValue: playerModel.lastName ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "parentname",
                  "Parent Name",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Parent Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.parentName = onSaveVal;
                  },
                  initialValue: playerModel.parentName ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "email",
                  "Email",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Email can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.email = onSaveVal;
                  },
                  initialValue: playerModel.email ?? "",
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
                      return "Confirm email can't be empty";
                    } else if (onValidateVal != playerModel.email) {
                      return "Emails must match.";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.confirmEmail = onSaveVal;
                  },
                  initialValue: playerModel.confirmEmail ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "username",
                  "Username",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Username can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.username = onSaveVal;
                  },
                  initialValue: playerModel.username ?? "",
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
                    playerModel.password = onSaveVal;
                  },
                  initialValue: playerModel.password ?? "",
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
                    } else if (onValidateVal != playerModel.password) {
                      return "Passwords must match.";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.confirmPassword = onSaveVal;
                  },
                  initialValue: playerModel.confirmPassword ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Player Age Group",
                    "",
                    playerModel.playerAgeGroupId,
                    playerModel.playerAgeGroup, (onChangedVal) {
                  playerModel.playerAgeGroupId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select age group';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Primary Position",
                    "",
                    playerModel.primaryPositionId,
                    playerModel.primaryPosition, (onChangedVal) {
                  playerModel.primaryPositionId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select Position';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Secondary Position",
                    "",
                    playerModel.secondaryPositionId,
                    playerModel.secondaryPosition, (onChangedVal) {
                  playerModel.secondaryPositionId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select Secondary Position';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Other Position",
                    "",
                    playerModel.otherPositionId,
                    playerModel.otherPosition, (onChangedVal) {
                  playerModel.otherPositionId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select other position';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Batting Side",
                    "",
                    playerModel.battingSideId,
                    playerModel.battingSide, (onChangedVal) {
                  playerModel.battingSideId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select batting side';
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
                  "battingaverage",
                  "Batting Average",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.battingAverage = onSaveVal;
                  },
                  initialValue: playerModel.battingAverage ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Can You Pitch",
                    "",
                    playerModel.canYouPitchId,
                    playerModel.canYouPitch, (onChangedVal) {
                  playerModel.canYouPitchId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Last Age Group played For",
                    "",
                    playerModel.pastAgeGroupId,
                    playerModel.pastAgeGroup, (onChangedVal) {
                  playerModel.pastAgeGroupId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return '';
                  }
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    labelFontSize: 14,
                    paddingLeft: 0,
                    paddingRight: 0,
                    optionValue: "id",
                    optionLabel: "label"),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Do You Currently Play for a Select/Travel Team",
                    "",
                    playerModel.currentlyPlayId,
                    playerModel.currentlyPlay, (onChangedVal) {
                  playerModel.currentlyPlayId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
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
                  "pastteams",
                  "Last Select/Travel Team You Played For",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.pastTeams = onSaveVal;
                  },
                  initialValue: playerModel.pastTeams ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.inputFieldWidgetWithLabel(
                  context,
                  "howlongplayed",
                  "How Long Have You Played",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.howLongPlayed = onSaveVal;
                  },
                  initialValue: playerModel.howLongPlayed ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "Can You Attend Practices",
                    "",
                    playerModel.attendPracticeId,
                    playerModel.attendPractice, (onChangedVal) {
                  playerModel.attendPracticeId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
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
                  "datesavailaible",
                  "What Dates Are You Availaible",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.datesAvailaible = onSaveVal;
                  },
                  initialValue: playerModel.datesAvailaible ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                FormHelper.dropDownWidgetWithLabel(
                    context,
                    "What Distance Are You Willing to Travel",
                    "",
                    playerModel.distanceTravelId,
                    playerModel.distanceTravel, (onChangedVal) {
                  playerModel.distanceTravelId = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select distance';
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
                  "zipcode",
                  "What is your ZipCode",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerModel.zipCode = onSaveVal;
                  },
                  initialValue: playerModel.zipCode ?? "",
                  borderColor: Colors.green,
                  backgroundColor: Colors.lightBlue,
                  fontSize: 14,
                  labelFontSize: 14,
                  paddingLeft: 0,
                  paddingRight: 0,
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
                    playerModel.playerBio = onSaveVal;
                  },
                  initialValue: playerModel.playerBio ?? "",
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
                        print(playerModel.toJson());
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
        ));
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
