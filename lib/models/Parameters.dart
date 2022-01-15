

class Parameters{
  // health Info
  double? _calorie; // g
  double? _protein; // g
  double? _fats; // g
  double? _carbohydrates; // g
  double? _fibre; // g
  double? _sugar;
  double? _cholestrol; // g

  double get cholestrol => _cholestrol!;

  set cholestrol(double value) {
    _cholestrol = value;
  }

  double get sugar => _sugar!;

  set sugar(double value) {
    _sugar = value;
  }

  double get fibre => _fibre!;

  set fibre(double value) {
    _fibre = value;
  }

  double get carbohydrates => _carbohydrates!;

  set carbohydrates(double value) {
    _carbohydrates = value;
  }

  double get fats => _fats!;

  set fats(double value) {
    _fats = value;
  }

  double get protein => _protein!;

  set protein(double value) {
    _protein = value;
  }

  double get calorie => _calorie!;

  set calorie(double value) {
    _calorie = value;
  }

  @override
  String toString() {
    return 'Parameters{_calorie: $_calorie, _protein: $_protein, _fats: $_fats, _carbohydrates: $_carbohydrates, _fibre: $_fibre, _sugar: $_sugar, _cholestrol: $_cholestrol}';
  }
}