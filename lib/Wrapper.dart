
import 'package:flutter/material.dart';
import 'package:nutri_track/models/User.dart';
import 'package:nutri_track/pages/HomePage.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool isLoggedIn = true;
  NutriTrackUser user = NutriTrackUser("aexxb","abc", 20, "email");
  @override
  Widget build(BuildContext context) {
    return HomePage(user: this.user,);
  }
}
