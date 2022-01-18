
import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_track/models/FoodItem.dart';
import 'package:nutri_track/models/Parameters.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';

void main(){
  test("NutriTrackUserModel", (){
    NutriTrackUser nutriTrackUser = NutriTrackUser("abc", "pqr", "email", 20 ,180);
    FoodItem food = FoodItem("Bread");
    food.foodParameters?.calorie = 10;
    nutriTrackUser + food;
    nutriTrackUser + food;
    // print(food.foodParameters?.calorie);
    print(nutriTrackUser.toString());
    expect(nutriTrackUser.age, 20);
  });
}