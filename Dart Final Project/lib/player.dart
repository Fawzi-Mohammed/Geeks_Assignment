import 'person.dart';

class Player extends Person {
  int _age;
  static int _id = 0;
  String _position;
  String _nationality;
  String _skills;
  int _jerseyNumber;
  double _stamina;
  late int _playerId;
  double _power;
  // Constructor
  Player({
    required double power,
    required int age,
    required String position,
    required String nationality,
    required String skills,
    required int jerseyNumber,
    required double stamina,
    required super.name,
  }) : _power = power,
       _age = age,
       _position = position,
       _nationality = nationality,
       _skills = skills,
       _jerseyNumber = jerseyNumber,
       _stamina = stamina {
    _playerId = ++_id;
  }

  int get age => _age;
  String get position => _position;
  String get nationality => _nationality;
  String get skills => _skills;
  int get jerseyNumber => _jerseyNumber;
  double get stamina => _stamina;
  int get playerId => _playerId;
  double get power => _power;
  set power(double value) => _power = value;
  set age(int value) => _age = value;
  set position(String value) => _position = value;
  set nationality(String value) => _nationality = value;
  set skills(String value) => _skills = value;
  set jerseyNumber(int value) => _jerseyNumber = value;
  set stamina(double value) => _stamina = value;
  @override
  String toString() {
    return '''
Player: $name (#$jerseyNumber)
Position: $position
Power: $power | Age: $age | Stamina: $stamina
Nationality: $nationality
Skills: $skills''';
  }
}
