
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_track/models/User.dart';

void main(){
  test("NutriTrackUserModel", (){
    NutriTrackUser nutriTrackUser = NutriTrackUser("abc", "pqr", 20, "email");
    expect(nutriTrackUser.age, 20);
  });
}