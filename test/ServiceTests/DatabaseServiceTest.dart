import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_track/models/User.dart';
import 'package:nutri_track/services/DatabaseService.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  await Firebase.initializeApp();

  test("Constructor", () async {
    String uid = "ZjilztTEct0R2S28gHy1";
    DatabaseService databaseService = DatabaseService(uid);
    NutriTrackUser nutriTrackUser = await databaseService.getUser();
    print(nutriTrackUser.toString());
  });
}