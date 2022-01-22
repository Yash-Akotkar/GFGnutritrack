import 'package:nutri_track/models/Parameters.dart';

class FoodItem{
  String foodName;
  Parameters? foodParameters;
  FoodItem(this.foodName){
    this.foodParameters = Parameters();
    this.foodParameters?.setToZero();
  }
}