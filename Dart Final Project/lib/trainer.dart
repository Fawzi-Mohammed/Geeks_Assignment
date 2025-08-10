import 'dart:math';

import 'person.dart';

class Trainer extends Person {
  static int _id = 0;
  late int _trainerId;
  int _age;
  String _nationality;
    int? _experience;
    String? _strategy_specialty;
  int _motivation;
  List<String> strategy = ['Defensive', 'Offensive'];
  Random random = Random();

  Trainer({
    required super.name,
    required int age,
    required String nationality,
    required int motivation,
  }) : this._age = age,
       this._nationality = nationality,
       this._motivation = motivation {
    int randomNumber = random.nextInt(81) + 20;
    _experience = randomNumber;
    _strategy_specialty = strategy[random.nextInt(2)];
    
    _trainerId = ++_id;
  }

  int get trainerId => _trainerId;
  int get age => _age;
  String get nationality => _nationality;
  int? get experience => _experience;
  String? get strategySpecialty => _strategy_specialty;
  int get motivation => _motivation;

  set age(int value) => _age = value;
  set nationality(String value) => _nationality = value;
  set experience(int? value) => _experience = value;
  set strategySpecialty(String? value) => _strategy_specialty = value;
  set motivation(int value) => _motivation = value;

  @override
  String toString() {
    return '\x1B[33mTrainer Info:\x1B[0m\n'
        'ID: $_trainerId\n'
        'Name: $name\n'
        'Age: $_age\n'
        'Nationality: $_nationality\n'
        'Experience: $_experience years\n'
        'Specialty: $_strategy_specialty\n'
        'Motivation: $_motivation/10';
  }
}
