class NutriTrackUser{
  // basic info
  String fireBaseUid;
  String name;
  int age;
  String email;
  int? heigth; // cm
  // health Info
  double? calorie; // g
  double? protein; // g
  double? fats; // g
  double? carbohydrates; // g
  double? fibre; // g
  double? sugar;
  double? cholestrol; // g

  NutriTrackUser(this.fireBaseUid,this.name, this.age, this.email);

  @override
  String toString() {
    return 'NutriTrackUser{fireBaseUid: $fireBaseUid, name: $name, age: $age, email: $email, heigth: $heigth, calorie: $calorie, protein: $protein, fats: $fats, carbohydrates: $carbohydrates, fibre: $fibre, sugar: $sugar, cholestrol: $cholestrol}';
  }
}