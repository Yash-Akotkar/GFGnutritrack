
import 'package:flutter/material.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';

class HomePage extends StatefulWidget {
  final NutriTrackUser user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text(widget.user.name),),
    );
  }
}
