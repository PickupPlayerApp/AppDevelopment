class PlayerModel {
  String? firstName;
  String? lastName;
  String? parentName;
  String? email;
  String? confirmEmail;
  String? username;
  String? password;
  String? confirmPassword;
  List<dynamic> playerAgeGroup = [];
  String? playerAgeGroupId;
  List<dynamic> primaryPosition = [];
  String? primaryPositionId;
  List<dynamic> secondaryPosition = [];
  String? secondaryPositionId;
  List<dynamic> otherPosition = [];
  String? otherPositionId;
  List<dynamic> battingSide = [];
  String? battingSideId;
  String? battingAverage;
  List<dynamic> canYouPitch = [];
  String? canYouPitchId;
  List<dynamic> pastAgeGroup = [];
  String? pastAgeGroupId;
  List<dynamic> currentlyPlay = [];
  String? currentlyPlayId;
  String? pastTeams;
  String? howLongPlayed;
  List<dynamic> attendPractice = [];
  String? attendPracticeId;
  String? datesAvailaible;
  List<dynamic> distanceTravel = [];
  String? distanceTravelId;
  String? zipCode;
  String? playerBio;

  PlayerModel(
      {this.firstName,
      this.lastName,
      this.parentName,
      this.email,
      this.confirmEmail,
      this.username,
      this.password,
      this.confirmPassword,
      this.battingAverage,
      this.pastTeams,
      this.howLongPlayed,
      this.datesAvailaible,
      this.zipCode,
      this.playerBio});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['FirstName'] = firstName;
    data['LastName'] = lastName;
    data['ParentName'] = parentName;
    data['Email'] = email;
    data['ConfirmEmail'] = confirmEmail;
    data['Username'] = username;
    data['Password'] = password;
    data['ConfirmPassword'] = confirmPassword;
    data['PlayerAgeGroup'] = playerAgeGroup;
    data['PrimaryPosition'] = primaryPosition;
    data['SecondaryPosition'] = secondaryPosition;
    data['OtherPosition'] = otherPosition;
    data['BattingSide'] = battingSide;
    data['BattingAverage'] = battingAverage;
    data['CanYouPitch'] = canYouPitch;
    data['PastAgeGroup'] = pastAgeGroup;
    data['CurrentlyPlay'] = currentlyPlay;
    data['PastTeams'] = pastTeams;
    data['HowLongPlayed'] = howLongPlayed;
    data['AttendPractice'] = attendPractice;
    data['DatesAvailaible'] = datesAvailaible;
    data['DistanceTravel'] = distanceTravel;
    data['ZipCode'] = zipCode;
    data['PlayerBio'] = playerBio;

    return data;
  }
}
