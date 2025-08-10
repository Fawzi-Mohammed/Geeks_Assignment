import 'dart:math';

import 'player.dart';
import 'trainer.dart';










class Team {
  List<Player> _players;
  Trainer _trainer;
  String _cityOfTeam;
  String _teamColor;
  String _name;
  String? _card;
    List<String> cards = ['Read', 'Yellow', 'Nothing'];
    Random random = Random();
    static const String reset = '\x1B[0m';
  static const String red = '\x1B[31m';
  static const String green = '\x1B[32m';
  static const String yellow = '\x1B[33m';
  static const String blue = '\x1B[34m';
  static const String magenta = '\x1B[35m';
  static const String cyan = '\x1B[36m';
  static const String white = '\x1B[37m';
  Team({
    required String name,
    required List<Player> players,
    required Trainer trainer,
    required String cityOfTeam,
    required String teamColor,
  }) : this._name = name,
       this._players = players,
       this._trainer = trainer,
       this._cityOfTeam = cityOfTeam,
       this._teamColor = teamColor{
           int randomCardIndex = random.nextInt(3);
            _card=cards[randomCardIndex];
       }

  List<Player> get players => _players;
  String? get card => _card;
  String get name => _name;
  Trainer get trainer => _trainer;
  String get cityOfTeam => _cityOfTeam;
  String get teamColor => _teamColor;
  set card(String? value) => _card = value;
  set name(String value) => _name = value;
  set players(List<Player> value) => _players = value;
  set trainer(Trainer value) => _trainer = value;
  set cityOfTeam(String value) => _cityOfTeam = value;
  set teamColor(String value) => _teamColor = value;


   @override
  String toString() {

    StringBuffer buffer = StringBuffer();
     
    buffer.writeln('$blue==== TEAM INFO ====$reset');
    buffer.writeln('${yellow}Name:$reset $_name');
    buffer.writeln('${yellow}City:$reset $_cityOfTeam');
    buffer.writeln('${yellow}Color:$reset $_teamColor');

    buffer.writeln('\n${green}--- Trainer ---$reset');
    buffer.writeln(_trainer.toString()); // Trainer should also override toString()

    buffer.writeln('\n${cyan}--- Players ---$reset');
    for (var player in _players) {
      buffer.writeln(player.toString()); // Player should also override toString()
    }

    if (_card != null) {
      buffer.writeln('\n${magenta}Card:$reset $_card');
    }

    return buffer.toString();
  }
}
