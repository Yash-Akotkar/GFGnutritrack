
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_track/models/User.dart';

void main(){
  test("NutriTrackUserModel", (){
    NutriTrackUser nutriTrackUser = NutriTrackUser("abc", "pqr", "email", 20 ,180);
    expect(nutriTrackUser.age, 20);
  });
}