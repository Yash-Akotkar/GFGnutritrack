import 'package:nutri_track/models/FoodItem.dart';
import 'package:nutri_track/models/Parameters.dart';
import 'package:nutri_track/services/DatabaseService.dart';

class NutriTrackUser{
  // basic info
  final String _fireBaseUid;
  String name;
  int age;
  final String _email;
  int? height; // cm
  double? weight;
  Parameters? _dailyParameters;
  Parameters? _monthlyParameters;

  NutriTrackUser(this._fireBaseUid,this.name, this._email, this.age, this.height){
    // constructor
    _dailyParameters = Parameters();
    _dailyParameters?.setToZero();
    _monthlyParameters = Parameters();
    _monthlyParameters?.setToZero();
  }

  // getters
  String get email => _email;

  String get fireBaseUid => _fireBaseUid;

  // to add a particular food item to parameters
  Future<NutriTrackUser> operator +(FoodItem food) async{
    _dailyParameters = _dailyParameters! + food.foodParameters;
    _monthlyParameters = _monthlyParameters! + food.foodParameters;

    await DatabaseService(_fireBaseUid).updateParameters(_dailyParameters!.getDataAsMap(), _monthlyParameters!.getDataAsMap());
    return this;
  }

  @override
  String toString() {
    return 'NutriTrackUser{_fireBaseUid: $_fireBaseUid, name: $name, age: $age, _email: $_email, height: $height, weight: $weight, _dailyParameters: $_dailyParameters, _monthlyParameters: $_monthlyParameters}';
  }

  Parameters get dailyParameters => _dailyParameters!;

  Parameters get monthlyParameters => _monthlyParameters!;

  set monthlyParameters(Parameters value) {
    _monthlyParameters = value;
  }

  set dailyParameters(Parameters value) {
    _dailyParameters = value;
  }
}