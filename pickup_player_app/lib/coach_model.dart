class CoachModel {
  String? firstName;
  String? lastName;
  String? teamName;
  String? teamEmail;
  String? confirmEmail;
  String? password;
  String? confirmPassword;
  List<dynamic> teamLevel = [];
  String? teamLevelId;
  String? teamLocation;
  String? winLoss;
  String? practiceLocation;
  String? practiceTime;
  List<String>? tryoutLocation;
  List<String>? tryoutDate;
  List<String>? tryoutTime;
  List<String>? tournamentLocation;
  List<String>? tournamentDate;
  List<String>? tournamentTime;
  List<dynamic> position = [];
  String? positionId;
  String? coachBio;

  CoachModel(
      {this.firstName,
      this.lastName,
      this.teamName,
      this.teamEmail,
      this.confirmEmail,
      this.password,
      this.confirmPassword,
      this.teamLocation,
      this.winLoss,
      this.practiceLocation,
      this.practiceTime,
      this.tryoutLocation,
      this.tryoutDate,
      this.tryoutTime,
      this.tournamentLocation,
      this.tournamentDate,
      this.tournamentTime,
      this.coachBio});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['FirstName'] = firstName;
    data['LastName'] = lastName;
    data['TeamName'] = teamName;
    data['TeamEmail'] = teamEmail;
    data['ConfirmEmail'] = confirmEmail;
    data['Password'] = password;
    data['ConfirmPassword'] = confirmPassword;
    data['TeamLevel'] = teamLevel;
    data['TeamLocation'] = teamLocation;
    data['WinLoss'] = winLoss;
    data['PracticeLocation'] = practiceLocation;
    data['PracticeTime'] = practiceTime;
    data['TryoutLocation'] = tryoutLocation;
    data['TryoutDate'] = tryoutDate;
    data['TryoutTime'] = tryoutTime;
    data['TournamentLocaton'] = tournamentLocation;
    data['TournamentDate'] = tournamentDate;
    data['TournamentTime'] = tournamentTime;
    data['Position'] = position;
    data['CoachBio'] = coachBio;

    return data;
  }
}
