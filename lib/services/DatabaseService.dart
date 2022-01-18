import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';
import 'package:nutri_track/models/Parameters.dart';

class DatabaseService {
  final String _firebaseUID;
  String? _dir;

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  NutriTrackUser? _nutriTrackUser;

  DatabaseService(this._firebaseUID) {
    _dir = '/users/$_firebaseUID';
  }

  Future<NutriTrackUser> getUser() async {
    // methode to load data from firebase and update the object accordingly
    try {
      var userData =
          await firebaseFirestore.collection("users").doc(_firebaseUID).get();
      _nutriTrackUser = NutriTrackUser(
          _firebaseUID,
          userData["name"].toString(),
          userData["email"].toString(),
          userData["age_yrs"],
          userData["height_cm"]);
      _nutriTrackUser?.dailyParameters = Parameters();
      _nutriTrackUser?.dailyParameters.setDataFromFirebaseDocument(userData["daily"]);
      _nutriTrackUser?.monthlyParameters = Parameters();
      _nutriTrackUser?.monthlyParameters.setDataFromFirebaseDocument(userData["monthly"]);
      return _nutriTrackUser!;
    } catch (e) {
      log("Error in Database Service :\n ${e.toString()}");
    }
    return _nutriTrackUser!;
  }

  Future<bool> updateField(String fieldName, dynamic value) async{
    try{
      await firebaseFirestore.collection("users").doc(_firebaseUID).update({fieldName:value});
      return true;
    }catch(e){
      log("Error in DatabaseService Updating Parameters : \n ${e.toString()}");
      return false;
    }
  }

  Future<bool> updateParameters(Map<String, double> daily, Map<String, double> monthly) async{
    // function to update all parameters
    try{
      await firebaseFirestore.collection("users").doc(_firebaseUID).update({"daily":daily, "monthly":monthly});
      return true;
    }catch(e){
        log("Error in DatabaseService Updating Parameters : \n ${e.toString()}");
        return false;
    }
  }

  String get dir => _dir!;

}
