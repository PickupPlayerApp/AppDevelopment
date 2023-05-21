class PlayerModel {
  static var playerName;
  static var parentName;
  static var email;
  String? confirmEmail;
  static var username;
  static var password;
  String? confirmPassword;
  List<dynamic> playerAgeGroup = [];
  static var playerAgeGroupId;
  List<dynamic> primaryPosition = [];
  static var primaryPositionId;
  List<dynamic> secondaryPosition = [];
  static var secondaryPositionId;
  List<dynamic> otherPosition = [];
  static var otherPositionId;
  List<dynamic> battingSide = [];
  static var battingSideId;
  static var battingAverage;
  List<dynamic> canYouPitch = [];
  static var canYouPitchId;
  List<dynamic> pastAgeGroup = [];
  static var pastAgeGroupId;
  List<dynamic> currentlyPlay = [];
  // ignore: prefer_typing_uninitialized_variables
  static var currentlyPlayId;
  static var pastTeams;
  static var howLongPlayed;
  List<dynamic> attendPractice = [];
  static var attendPracticeId;
  static var datesAvailaible;
  List<dynamic> distanceTravel = [];
  static var distanceTravelId;
  static var zipCode;
  static var playerBio;

  PlayerModel(
     /* {this.firstName,
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
      this.playerBio}*/
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['PlayerName'] = playerName;
    data['ParentName'] = parentName;
    data['Email'] = email;
    data['Email'] = confirmEmail;
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
