import 'dart:developer';

class Parameters{
  // health Info
  double? _calorie; // g
  double? _protein; // g
  double? _fats; // g
  double? _carbohydrates; // g
  double? _fibre; // g
  double? _sugar;
  double? _cholesterol;


  void setToZero(){
    _calorie = 0;
    _protein = 0;
    _fats = 0;
    _carbohydrates = 0;
    _fibre = 0;
    _sugar = 0;
    _cholesterol = 0;
  }

  void setDataFromFirebaseDocument(dynamic dataFromFirebase){
    // methode to set data directly from firebase fields
    try {
      _calorie = dataFromFirebase["calorie"].toDouble();
      _protein = dataFromFirebase["protein"].toDouble();
      // _fats = dataFromFirebase["fats"].toDouble();
      // _carbohydrates = dataFromFirebase["carbohydrates"].toDouble();
      // _fibre = dataFromFirebase["fibre"].toDouble();
      // _sugar = dataFromFirebase["sugar"].toDouble();
      // _cholesterol = dataFromFirebase["cholesterol"].toDouble();
    }catch(e){
      log("Error in Parameter Access From Firebase: \n${e.toString()}");
    }
  }

  Map<String, double> getDataAsMap(){
    // returns a map of key value pairs for firebase and other functions
    Map<String, double> res = {};
    res["calorie"] = _calorie!;
    res["protein"] = _protein!;
    res["fats"] = _fats!;
    res["carbohydrates"] = _carbohydrates!;
    res["fibre"] = _fibre!;
    res["sugar"] = _sugar!;
    res["cholesterol"] = _cholesterol!;
    return res;
  }

  @override
  String toString() {
    return 'Parameters{_calorie: $_calorie, _protein: $_protein, _fats: $_fats, _carbohydrates: $_carbohydrates, _fibre: $_fibre, _sugar: $_sugar, _cholesterol: $_cholesterol}';
  }

  // overloading + operator
  Parameters operator +(Parameters? parameters){
    _calorie =_calorie! + parameters!.calorie;
    _protein = _protein! + parameters.protein;
    _fats = _fats! + parameters.fats;
    _carbohydrates = _carbohydrates! + parameters.carbohydrates;
    _fibre = _fibre! + parameters.fibre;
    _sugar = _sugar! + parameters.sugar;
    _cholesterol = _cholesterol! + parameters.cholesterol;
    return this;
  }


  // getters and setters section
  double get calorie => _calorie!; // g

  double get protein => _protein!;

  double get cholesterol => _cholesterol!;

  double get sugar => _sugar!;

  double get fibre => _fibre!;

  double get carbohydrates => _carbohydrates!;

  double get fats => _fats!;

  set cholesterol(double value) {
    _cholesterol = value;
  }

  set sugar(double value) {
    _sugar = value;
  }

  set fibre(double value) {
    _fibre = value;
  }

  set carbohydrates(double value) {
    _carbohydrates = value;
  }

  set fats(double value) {
    _fats = value;
  }

  set protein(double value) {
    _protein = value;
  }

  set calorie(double value) {
    _calorie = value;
  }
}