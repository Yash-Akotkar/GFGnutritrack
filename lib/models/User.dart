import 'package:nutri_track/models/Parameters.dart';

class NutriTrackUser{
  // basic info
  String fireBaseUid;
  String name;
  int age;
  String email;
  int? height; // cm

  Parameters? dailyParameters;
  Parameters? monthlyParameters;

  NutriTrackUser(this.fireBaseUid,this.name, this.email, this.age, this.height);

}