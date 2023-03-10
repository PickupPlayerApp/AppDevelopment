import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

  final playerFirstNameController = TextEditingController();
  final playerLastNameController = TextEditingController();
  final playerParentNameController = TextEditingController();
  final playerEmailController = TextEditingController();
  final playerUserNameController = TextEditingController();
  final playerPasswordController = TextEditingController();
  final playerAgeGroupController = TextEditingController();
  final playerPrimaryPositionController = TextEditingController();
  final playerSecondaryPositionController = TextEditingController();
  final playerOtherPositionController = TextEditingController();
  final playerBattingSideController = TextEditingController();
  final playerBattingAverageController = TextEditingController();
  final playerPitchController = TextEditingController();
  final playerLastAgeGroupController = TextEditingController();
  final playerDoYouPlayController = TextEditingController();
  final playerLastTeamController = TextEditingController();
  final playerHowLongController = TextEditingController();
  final playerPracticeController = TextEditingController();
  final playerDatesAvailaibleController = TextEditingController();
  final playerTravelDistanceController = TextEditingController();
  final playerZipCodeController = TextEditingController();

  late DatabaseReference dbRef;


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
    dbRef = FirebaseDatabase.instance.ref().child('Players');

    playerModel.playerAgeGroup.add({"id": "8", "label": "8"});
    playerModel.playerAgeGroup.add({"id": "9", "label": "9"});
    playerModel.playerAgeGroup.add({"id": "10", "label": "10"});
    playerModel.playerAgeGroup.add({"id": "11", "label": "11"});
    playerModel.playerAgeGroup.add({"id": "12", "label": "12"});
    playerModel.playerAgeGroup.add({"id": "13", "label": "13"});
    playerModel.playerAgeGroup.add({"id": "14", "label": "14"});

    playerModel.primaryPosition.add({"id": "N/A", "label": "N/A"});
    playerModel.primaryPosition.add({"id": "Pitcher", "label": "Pitcher"});
    playerModel.primaryPosition.add({"id": "Catcher", "label": "Catcher"});
    playerModel.primaryPosition.add({"id": "1st Base", "label": "1st Base"});
    playerModel.primaryPosition.add({"id": "2nd Base", "label": "2nd Base"});
    playerModel.primaryPosition.add({"id": "3rd Base", "label": "3rd Base"});
    playerModel.primaryPosition.add({"id": "Shortstop", "label": "Shortstop"});
    playerModel.primaryPosition.add({"id": "Left Field", "label": "Left Field"});
    playerModel.primaryPosition.add({"id": "Right Field", "label": "Right Field"});
    playerModel.primaryPosition.add({"id": "Center Field", "label": "Center Field"});
    playerModel.primaryPosition.add({"id": "Designated Hitter", "label": "Designated Hitter"});

    playerModel.secondaryPosition.add({"id": "N/A", "label": "N/A"});
    playerModel.secondaryPosition.add({"id": "Pitcher", "label": "Pitcher"});
    playerModel.secondaryPosition.add({"id": "Catcher", "label": "Catcher"});
    playerModel.secondaryPosition.add({"id": "1st Base", "label": "1st Base"});
    playerModel.secondaryPosition.add({"id": "2nd Base", "label": "2nd Base"});
    playerModel.secondaryPosition.add({"id": "3rd Base", "label": "3rd Base"});
    playerModel.secondaryPosition.add({"id": "Shortstop", "label": "Shortstop"});
    playerModel.secondaryPosition.add({"id": "Left Field", "label": "Left Field"});
    playerModel.secondaryPosition.add({"id": "Right Field", "label": "Right Field"});
    playerModel.secondaryPosition.add({"id": "Center Field", "label": "Center Field"});
    playerModel.secondaryPosition.add({"id": "Designated Hitter", "label": "Designated Hitter"});

    playerModel.otherPosition.add({"id": "N/A", "label": "N/A"});
    playerModel.otherPosition.add({"id": "Pitcher", "label": "Pitcher"});
    playerModel.otherPosition.add({"id": "Catcher", "label": "Catcher"});
    playerModel.otherPosition.add({"id": "1st Base", "label": "1st Base"});
    playerModel.otherPosition.add({"id": "2nd Base", "label": "2nd Base"});
    playerModel.otherPosition.add({"id": "3rd Base", "label": "3rd Base"});
    playerModel.otherPosition.add({"id": "Shortstop", "label": "Shortstop"});
    playerModel.otherPosition.add({"id": "Left Field", "label": "Left Field"});
    playerModel.otherPosition.add({"id": "Right Field", "label": "Right Field"});
    playerModel.otherPosition.add({"id": "Center Field", "label": "Center Field"});
    playerModel.otherPosition.add({"id": "Designated Hitter", "label": "Designated Hitter"});

    playerModel.battingSide.add({"id": "Right", "label": "Right"});
    playerModel.battingSide.add({"id": "Left", "label": "Left"});

    playerModel.canYouPitch.add({"id": 'Yes', "label": "Yes"});
    playerModel.canYouPitch.add({"id": "No", "label": "No"});

    playerModel.pastAgeGroup.add({"id": "8", "label": "8"});
    playerModel.pastAgeGroup.add({"id": "9", "label": "9"});
    playerModel.pastAgeGroup.add({"id": "10", "label": "10"});
    playerModel.pastAgeGroup.add({"id": "11", "label": "11"});
    playerModel.pastAgeGroup.add({"id": "12", "label": "12"});
    playerModel.pastAgeGroup.add({"id": "13", "label": "13"});
    playerModel.pastAgeGroup.add({"id": "14", "label": "14"});

    playerModel.currentlyPlay.add({"id": "Yes", "label": "Yes"});
    playerModel.currentlyPlay.add({"id": "No", "label": "No"});

    playerModel.attendPractice.add({"id": "Yes", "label": "Yes"});
    playerModel.attendPractice.add({"id": "No", "label": "No"});

    playerModel.distanceTravel.add({"id": "10 miles", "label": "10 miles"});
    playerModel.distanceTravel.add({"id": "20 miles", "label": "20 miles"});
    playerModel.distanceTravel.add({"id": "30 miles", "label": "30 miles"});
    playerModel.distanceTravel.add({"id": "40 miles", "label": "40 miles"});
    playerModel.distanceTravel.add({"id": "50 miles", "label": "50 miles"});
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
                    //playerModel.firstName = onSaveVal;
                    playerFirstNameController;
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerFirstNameController.text = val);
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
                  "Player Last Name",
                  "",
                  (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Last Name can't be empty";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerLastNameController;
                   // playerModel.lastName = onSaveVal;
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerLastNameController.text = val);
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
                    playerParentNameController;
                    playerModel.parentName = onSaveVal;
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerParentNameController.text = val);
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
                      return "Confirm email can't be empty";
                    } else if (onValidateVal != email) {
                      return "Emails must match.";
                    }
                    return null;
                  },
                  (onSaveVal) {
                    playerEmailController;
                    playerModel.confirmEmail = onSaveVal;
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerEmailController.text = val);
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
                    playerUserNameController;
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerUserNameController.text = val);
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
                    } else if (onValidateVal != password) {
                      return "Passwords must match.";
                    }
                    return null;
                  },
                  (onSaveVal) {

                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerPasswordController.text = val);
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
                    "Player Age Group",
                    "",
                    playerModel.playerAgeGroupId,
                    playerModel.playerAgeGroup, (onChangedVal) {
                  playerModel.playerAgeGroupId = onChangedVal;
                  playerAgeGroupController.text = playerModel.playerAgeGroupId!;
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
                  playerPrimaryPositionController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select Position';
                  }
                  (onSaveVal) {
                    
                  };
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
                  playerSecondaryPositionController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select Secondary Position';
                  }
                  (onSaveVal) {
                    
                  };
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
                  playerOtherPositionController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select other position';
                  }
                  (onSaveVal) {
                    
                  };
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
                  playerBattingSideController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select batting side';
                  }
                  (onSaveVal) {
                    
                  };
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
                    
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerBattingAverageController.text = val);
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
                    "Can You Pitch",
                    "",
                    playerModel.canYouPitchId,
                    playerModel.canYouPitch, (onChangedVal) {
                  playerModel.canYouPitchId = onChangedVal;
                  playerPitchController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
                  }
                  (onSaveVal) {
                    
                  };
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
                  playerLastAgeGroupController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return '';
                  }
                  (onSaveVal){
                    
                  };
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
                  playerDoYouPlayController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
                  }
                  (onSaveVal) {
                    
                  };
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
                   
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerLastTeamController.text = val);
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
                    
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerHowLongController.text = val);
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
                    "Can You Attend Practices",
                    "",
                    playerModel.attendPracticeId,
                    playerModel.attendPractice, (onChangedVal) {
                  playerModel.attendPracticeId = onChangedVal;
                  playerPracticeController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select yes or no';
                  }
                  (onSaveVal) {
                    
                  };
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
                    
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerDatesAvailaibleController.text = val);
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
                    "What Distance Are You Willing to Travel",
                    "",
                    playerModel.distanceTravelId,
                    playerModel.distanceTravel, (onChangedVal) {
                  playerModel.distanceTravelId = onChangedVal;
                  playerTravelDistanceController.text = onChangedVal;
                }, (onValidateVal) {
                  if (onValidateVal == null) {
                    return 'Please select distance';
                  }
                  (onSaveVal) {
                    
                  };
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
                    
                  },
                  initialValue: "",
                  onChange: (val) {
                    setState(() => playerZipCodeController.text = val);
                  },
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
                        Map<String, String> player = {
                          'first name': playerFirstNameController.text,
                          'last name' : playerLastNameController.text,
                          'parent mame' : playerParentNameController.text,
                          'email' : playerEmailController.text,
                          'user name' : playerUserNameController.text,
                          'password' : playerPasswordController.text,
                          'age group' : playerAgeGroupController.text,
                          'primary position' : playerPrimaryPositionController.text,
                          'secondary position' : playerSecondaryPositionController.text,
                          'other position' : playerOtherPositionController.text,
                          'batting side' : playerBattingSideController.text,
                          'pitch' : playerPitchController.text,
                          'last age group' : playerLastAgeGroupController.text,
                          'current team' : playerDoYouPlayController.text,
                          'last team' : playerLastTeamController.text,
                          'how long played' : playerHowLongController.text,
                          'attend practice' : playerPracticeController.text,
                          'dates availaible' : playerDatesAvailaibleController.text,
                          'distance travel' : playerTravelDistanceController.text,
                          'zipcode' : playerZipCodeController.text
                        };

                        dbRef.push().set(player);
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
