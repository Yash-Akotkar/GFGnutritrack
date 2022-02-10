
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';
import 'package:nutri_track/pages/HomePage.dart';
import 'package:nutri_track/pages/SignUpPage.dart';
import 'package:nutri_track/services/DatabaseService.dart';
import 'package:nutri_track/pages/LoginPage.dart';

void exe() async{
  String uid = "ZjilztTEct0R2S28gHy1";
  DatabaseService databaseService = DatabaseService(uid);
  NutriTrackUser nutriTrackUser = await databaseService.getUser();
  print(nutriTrackUser.toString());
}

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  bool isLoggedIn = true;
  NutriTrackUser user = NutriTrackUser("aexxb","abc", "email", 20, 180);
  @override
  Widget build(BuildContext context) {
    exe();
    // return HomePage(user: this.user,);
    return signup();   
  }
}
