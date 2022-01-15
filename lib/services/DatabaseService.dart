import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nutri_track/models/User.dart';

class DatabaseService{
  String _firebaseUID;
  String? _dir;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  NutriTrackUser? _nutriTrackUser;

  DatabaseService(this._firebaseUID) {
    this._dir = '/users/${this._firebaseUID}';
  }

  Future<NutriTrackUser> getUser() async{
    try{
      var userData = await this.firebaseFirestore.collection("users").doc(this._firebaseUID).get();
      this._nutriTrackUser = NutriTrackUser(this._firebaseUID, userData["name"].toString(), userData["email"], userData["age"], userData["height"]);
    }catch(e){
    }
    return this._nutriTrackUser!;
  }

  String get dir => _dir!;
}