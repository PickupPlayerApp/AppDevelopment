import 'package:flutter/material.dart';
import 'package:pickup_player_app/coach_profile.dart';
import 'package:pickup_player_app/new_coach_info_page.dart';

class CoachModel {
  // ignore: prefer_typing_uninitialized_variables
  static var coachName;
  // ignore: prefer_typing_uninitialized_variables
  //static var lastName;
  // ignore: prefer_typing_uninitialized_variables
  static var teamName;
  // ignore: prefer_typing_uninitialized_variables
  static var teamEmail;
   String? confirmEmail;
  // ignore: prefer_typing_uninitialized_variables
  static var password;
  // ignore: prefer_typing_uninitialized_variables
  static var confirmPassword;
  List<dynamic> teamLevel = [];
  // ignore: prefer_typing_uninitialized_variables
  static var teamLevelId;
  // ignore: prefer_typing_uninitialized_variables
  static var teamLocation;
  // ignore: prefer_typing_uninitialized_variables
  static var winLoss;
  // ignore: prefer_typing_uninitialized_variables
  static var practiceLocation;
  // ignore: prefer_typing_uninitialized_variables
  static var practiceTime;
  List<String>? tryoutLocation;
  List<String>? tryoutDate;
  List<String>? tryoutTime;
  List<String>? tournamentLocation;
  List<String>? tournamentDate;
  List<String>? tournamentTime;
  List<dynamic> position = [];
  String? positionId;
  String? coachBio;

  //var coachFirstName = firstName;

  /*CoachModel(
      {//this.firstName,
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
      this.coachBio});*/


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['CoachName'] = coachName;
    //data['LastName'] = lastName;
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
