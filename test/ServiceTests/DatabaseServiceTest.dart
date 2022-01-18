import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';
import 'package:nutri_track/services/DatabaseService.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  test("Constructor", () async {
    String uid = "ZjilztTEct0R2S28gHy1";
    DatabaseService databaseService = DatabaseService(uid);
    NutriTrackUser nutriTrackUser = await databaseService.getUser();
    expect(nutriTrackUser.fireBaseUid.toString(), uid);
  });
}
