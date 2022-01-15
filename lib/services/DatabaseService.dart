import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nutri_track/models/User.dart';

class DatabaseService {
  String _firebaseUID;
  String? _dir;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  NutriTrackUser? _nutriTrackUser;

  DatabaseService(this._firebaseUID) {
    _dir = '/users/${_firebaseUID}';
  }

  Future<NutriTrackUser> getUser() async {
    try {
      var userData =
          await firebaseFirestore.collection("users").doc(_firebaseUID).get();

      _nutriTrackUser = NutriTrackUser(
          _firebaseUID,
          userData["name"].toString(),
          userData["email"].toString(),
          userData["age_yrs"],
          userData["height_cm"]);
    } catch (e) {
      print(e);
    }
    return _nutriTrackUser!;
  }

  String get dir => _dir!;
}
