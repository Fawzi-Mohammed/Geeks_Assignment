import 'dart:io';

import 'Stadium.dart';
import 'player.dart';
import 'team.dart';
import 'trainer.dart';

class Game {
  late Team team1;
  late Team team2;
  late Stadium stadium;
  void startMatch() {
    while (true) {
      print('Do You want  to Start (Y/N)');
      String input = stdin.readLineSync() ?? '';
      if (input.isNotEmpty && input.toUpperCase() == 'Y') {
        print('Enter the name of Stadium');
        String stadiumName = stdin.readLineSync() ?? '';
        if (stadiumName.isNotEmpty) {
          print('Enter the location of Stadium');
          String stadiumLocation = stdin.readLineSync() ?? '';
          if (stadiumLocation.isNotEmpty) {
            print(
              ' Enter the capacity of Stadium if you want to skip it press 0',
            );
            int stadiumCapacity = int.parse(stdin.readLineSync() ?? '0');
            print(
              ' Enter the Altitude of Stadium if you want to skip it press 0',
            );
            double stadiumAltitude = double.parse(stdin.readLineSync() ?? '0');
            print(
              ' Enter the Weather of Stadium if you want to skip it press enter',
            );
            String stadiumWeather = stdin.readLineSync() ?? '';
            stadium = createStadium(
              name: stadiumName,
              location: stadiumLocation,
              capacity: stadiumCapacity,
              altitude: stadiumAltitude,
              weather: stadiumWeather,
            );
          } else {
            print('Stadium location is required');
            continue;
          }
        } else {
          print('Stadium name is required');
          continue;
        }

        print('Enter the Team #1 name');
        String teamNameInput1 = stdin.readLineSync() ?? '';
        if (teamNameInput1.isNotEmpty) {
          print('Enter the City of Team  #1  ');
          String cityOfTeam1 = stdin.readLineSync() ?? '';
          if (cityOfTeam1.isNotEmpty) {
            print('Enter the Color of Team  #1 ');
            String colorOfTeam1 = stdin.readLineSync() ?? '';
            if (colorOfTeam1.isNotEmpty) {
              print('Enter the name  of Trainer  #1 ');
              String trainerName1 = stdin.readLineSync() ?? '';
              if (trainerName1.isNotEmpty) {
                print('Enter the age  of Trainer  #1  ');
                int trainerAge1 = int.parse(stdin.readLineSync() ?? '0');
                if (trainerAge1 >= 30 && trainerAge1 <= 90) {
                  print('Enter the Nationality  of Trainer  #1  ');
                  String trainerNationality1 = stdin.readLineSync() ?? '';
                  if (trainerNationality1.isNotEmpty) {
                    print('Enter the Motivation  of Trainer  #1  ');
                    int trainerMotivation1 = int.parse(
                      stdin.readLineSync() ?? '0',
                    );
                    if (trainerMotivation1 > 0 && trainerMotivation1 <= 100) {
                      team1 = createTeam(
                        nameOfTeam: teamNameInput1,
                        trainer: Trainer(
                          name: trainerName1,
                          age: trainerAge1,
                          nationality: trainerNationality1,
                          motivation: trainerMotivation1,
                        ),
                        cityOfTeam: cityOfTeam1,
                        teamColor: colorOfTeam1,
                      );
                    } else {
                      print('Enter valid Motivation Number ');
                      continue;
                    }
                  } else {
                    print('Trainer Nationality is required');
                    continue;
                  }
                } else {
                  print('Enter valid age');
                  continue;
                }
              } else {
                print('Trainer Name is required');
                continue;
              }
            } else {
              print('Team Color is required');
              continue;
            }
          } else {
            print('Team City is required');
            continue;
          }
        } else {
          print('Team name is required');
          continue;
        }

        print('Enter the Team #2 name');
        String teamNameInput2 = stdin.readLineSync() ?? '';
        if (teamNameInput2.isNotEmpty) {
          print('Enter the City of Team  #2  ');
          String cityOfTeam2 = stdin.readLineSync() ?? '';
          if (cityOfTeam2.isNotEmpty) {
            print('Enter the Color of Team  #2 ');
            String colorOfTeam2 = stdin.readLineSync() ?? '';
            if (colorOfTeam2.isNotEmpty) {
              print('Enter the name  of Trainer  #2 ');
              String trainerName2 = stdin.readLineSync() ?? '';
              if (trainerName2.isNotEmpty) {
                print('Enter the age  of Trainer  #2  ');
                int trainerAge2 = int.parse(stdin.readLineSync() ?? '0');
                if (trainerAge2 >= 30 && trainerAge2 <= 90) {
                  print('Enter the Nationality  of Trainer  #2  ');
                  String trainerNationality2 = stdin.readLineSync() ?? '';
                  if (trainerNationality2.isNotEmpty) {
                    print('Enter the Motivation  of Trainer  #2  ');
                    int trainerMotivation2 = int.parse(
                      stdin.readLineSync() ?? '0',
                    );
                    if (trainerMotivation2 > 0 && trainerMotivation2 <= 100) {
                      team2 = createTeam(
                        nameOfTeam: teamNameInput2,
                        trainer: Trainer(
                          name: trainerName2,
                          age: trainerAge2,
                          nationality: trainerNationality2,
                          motivation: trainerMotivation2,
                        ),
                        cityOfTeam: cityOfTeam2,
                        teamColor: colorOfTeam2,
                      );
                    } else {
                      print('Enter valid Motivation Number ');
                      continue;
                    }
                  } else {
                    print('Trainer Nationality is required');
                    continue;
                  }
                } else {
                  print('Enter valid age');
                  continue;
                }
              } else {
                print('Trainer Name is required');
                continue;
              }
            } else {
              print('Team Color is required');
              continue;
            }
          } else {
            print('Team City is required');
            continue;
          }
        } else {
          print('Team name is required');
          continue;
        }
        print(stadium);
        print(team1);
        print(team2);
        print(winingTeame(team1, team2, stadium));
      } else if (input.isNotEmpty && input.toUpperCase() == 'N') {
        print('BY BY');
        break;
      } else {
        print('please enter Y/N');
      }
    }
  }

  String winingTeame(Team team1, Team team2, Stadium stadium) {
    num team1Pointes = 0;
    num team2Pointes = 0;

    for (int i = 0; i < team1.players.length; i++) {
      team1Pointes += team1.players[i].power;
      team2Pointes += team2.players[i].power;
    }
    team1Pointes += team1.trainer.experience!;
    team2Pointes += team2.trainer.experience!;
    if (team1.card!.toLowerCase() == 'read') {
      team1Pointes = team1Pointes - 20;
    } else if (team1.card!.toLowerCase() == 'yellow') {
      team1Pointes = team1Pointes - 20;
    } else {
      team1Pointes;
    }

    if (team2.card!.toLowerCase() == 'read') {
      team2Pointes = team2Pointes - 20;
    } else if (team2.card!.toLowerCase() == 'yellow') {
      team2Pointes = team2Pointes - 20;
    } else {
      team2Pointes;
    }

    if (team1.trainer.strategySpecialty == 'Defensive') {
      team1Pointes += 5;
    } else {
      team1Pointes += 10;
    }

    if (team2.trainer.strategySpecialty == 'Defensive') {
      team2Pointes += 5;
    } else {
      team2Pointes += 10;
    }
    if (team1Pointes > team2Pointes) {
      return '${team1.name} is win in ${stadium.name} by ${team1.trainer} the pointes of team 1 is : $team1Pointes and the pointes of team 2 is :$team2Pointes';
    } else if (team2Pointes > team1Pointes) {
      return '${team2.name} is win in ${stadium.name} by ${team2.trainer} the pointes of team 1 is : $team1Pointes and the pointes of team 2 is :$team2Pointes';
    } else {
      return ' The two teams tied in the match. ';
    }
  }

  Team createTeam({
    required String nameOfTeam,
    required Trainer trainer,
    required String cityOfTeam,
    required String teamColor,
  }) {
    List<Player> players = [
      Player(
        name: "Lionel Messi",
        power: 95,
        age: 36,
        position: "Forward",
        nationality: "Argentina",
        skills: "Dribbling, Passing, Shooting",
        jerseyNumber: 10,
        stamina: 88,
      ),
      Player(
        name: "Cristiano Ronaldo",
        power: 94,
        age: 39,
        position: "Forward",
        nationality: "Portugal",
        skills: "Finishing, Heading, Speed",
        jerseyNumber: 7,
        stamina: 85,
      ),
      Player(
        name: "Neymar Jr",
        power: 91,
        age: 31,
        position: "Forward",
        nationality: "Brazil",
        skills: "Dribbling, Creativity, Flair",
        jerseyNumber: 10,
        stamina: 83,
      ),
      Player(
        name: "Kylian Mbappé",
        power: 92,
        age: 25,
        position: "Forward",
        nationality: "France",
        skills: "Speed, Finishing, Dribbling",
        jerseyNumber: 7,
        stamina: 90,
      ),
      Player(
        name: "Kevin De Bruyne",
        power: 90,
        age: 32,
        position: "Midfielder",
        nationality: "Belgium",
        skills: "Passing, Vision, Shooting",
        jerseyNumber: 17,
        stamina: 84,
      ),
      Player(
        name: "Virgil van Dijk",
        power: 89,
        age: 32,
        position: "Defender",
        nationality: "Netherlands",
        skills: "Tackling, Positioning, Strength",
        jerseyNumber: 4,
        stamina: 86,
      ),
      Player(
        name: "Luka Modrić",
        power: 88,
        age: 37,
        position: "Midfielder",
        nationality: "Croatia",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 10,
        stamina: 80,
      ),
      Player(
        name: "Robert Lewandowski",
        power: 91,
        age: 35,
        position: "Forward",
        nationality: "Poland",
        skills: "Finishing, Positioning, Heading",
        jerseyNumber: 9,
        stamina: 83,
      ),
      Player(
        name: "Mohamed Salah",
        power: 90,
        age: 31,
        position: "Forward",
        nationality: "Egypt",
        skills: "Speed, Dribbling, Finishing",
        jerseyNumber: 11,
        stamina: 87,
      ),
      Player(
        name: "Sergio Ramos",
        power: 87,
        age: 36,
        position: "Defender",
        nationality: "Spain",
        skills: "Tackling, Leadership, Aerial Ability",
        jerseyNumber: 4,
        stamina: 75,
      ),

      Player(
        name: "Karim Benzema",
        power: 88,
        age: 35,
        position: "Forward",
        nationality: "France",
        skills: "Finishing, Vision, Dribbling",
        jerseyNumber: 9,
        stamina: 80,
      ),
      Player(
        name: "Paul Pogba",
        power: 85,
        age: 30,
        position: "Midfielder",
        nationality: "France",
        skills: "Passing, Strength, Dribbling",
        jerseyNumber: 6,
        stamina: 78,
      ),
      Player(
        name: "Sadio Mané",
        power: 88,
        age: 30,
        position: "Forward",
        nationality: "Senegal",
        skills: "Speed, Dribbling, Finishing",
        jerseyNumber: 10,
        stamina: 85,
      ),
      Player(
        name: "Ederson",
        power: 85,
        age: 30,
        position: "Goalkeeper",
        nationality: "Brazil",
        skills: "Reflexes, Distribution, Positioning",
        jerseyNumber: 31,
        stamina: 75,
      ),
      Player(
        name: "Alisson Becker",
        power: 86,
        age: 31,
        position: "Goalkeeper",
        nationality: "Brazil",
        skills: "Reflexes, Handling, Positioning",
        jerseyNumber: 1,
        stamina: 76,
      ),
      Player(
        name: "Joshua Kimmich",
        power: 87,
        age: 27,
        position: "Midfielder",
        nationality: "Germany",
        skills: "Passing, Tackling, Vision",
        jerseyNumber: 6,
        stamina: 80,
      ),
      Player(
        name: "Trent Alexander-Arnold",
        power: 85,
        age: 24,
        position: "Defender",
        nationality: "England",
        skills: "Crossing, Passing, Tackling",
        jerseyNumber: 66,
        stamina: 82,
      ),
      Player(
        name: "Jadon Sancho",
        power: 85,
        age: 24,
        position: "Forward",
        nationality: "England",
        skills: "Dribbling, Speed, Creativity",
        jerseyNumber: 7,
        stamina: 79,
      ),
      Player(
        name: "Erling Haaland",
        power: 90,
        age: 23,
        position: "Forward",
        nationality: "Norway",
        skills: "Finishing, Strength, Positioning",
        jerseyNumber: 9,
        stamina: 88,
      ),
      Player(
        name: "Angel Di Maria",
        power: 84,
        age: 34,
        position: "Midfielder",
        nationality: "Argentina",
        skills: "Dribbling, Passing, Creativity",
        jerseyNumber: 11,
        stamina: 74,
      ),
      Player(
        name: "Sergio Busquets",
        power: 83,
        age: 35,
        position: "Midfielder",
        nationality: "Spain",
        skills: "Passing, Positioning, Tackling",
        jerseyNumber: 5,
        stamina: 77,
      ),
      Player(
        name: "Gerard Piqué",
        power: 82,
        age: 36,
        position: "Defender",
        nationality: "Spain",
        skills: "Tackling, Positioning, Aerial Ability",
        jerseyNumber: 3,
        stamina: 72,
      ),
      Player(
        name: "Toni Kroos",
        power: 87,
        age: 33,
        position: "Midfielder",
        nationality: "Germany",
        skills: "Passing, Vision, Shooting",
        jerseyNumber: 8,
        stamina: 79,
      ),
      Player(
        name: "Manuel Neuer",
        power: 88,
        age: 37,
        position: "Goalkeeper",
        nationality: "Germany",
        skills: "Reflexes, Leadership, Positioning",
        jerseyNumber: 1,
        stamina: 74,
      ),
      Player(
        name: "Luis Suárez",
        power: 86,
        age: 36,
        position: "Forward",
        nationality: "Uruguay",
        skills: "Finishing, Positioning, Dribbling",
        jerseyNumber: 9,
        stamina: 74,
      ),
      Player(
        name: "Pierre-Emerick Aubameyang",
        power: 85,
        age: 33,
        position: "Forward",
        nationality: "Gabon",
        skills: "Speed, Finishing, Positioning",
        jerseyNumber: 14,
        stamina: 80,
      ),
      Player(
        name: "Marc-André ter Stegen",
        power: 86,
        age: 31,
        position: "Goalkeeper",
        nationality: "Germany",
        skills: "Reflexes, Distribution, Positioning",
        jerseyNumber: 1,
        stamina: 76,
      ),
      Player(
        name: "Raheem Sterling",
        power: 86,
        age: 28,
        position: "Forward",
        nationality: "England",
        skills: "Speed, Dribbling, Creativity",
        jerseyNumber: 7,
        stamina: 82,
      ),
      Player(
        name: "David Alaba",
        power: 85,
        age: 31,
        position: "Defender",
        nationality: "Austria",
        skills: "Tackling, Passing, Versatility",
        jerseyNumber: 27,
        stamina: 81,
      ),
      Player(
        name: "Kalidou Koulibaly",
        power: 85,
        age: 31,
        position: "Defender",
        nationality: "Senegal",
        skills: "Tackling, Strength, Positioning",
        jerseyNumber: 26,
        stamina: 82,
      ),
      Player(
        name: "Jack Grealish",
        power: 84,
        age: 27,
        position: "Midfielder",
        nationality: "England",
        skills: "Dribbling, Creativity, Passing",
        jerseyNumber: 10,
        stamina: 77,
      ),
      Player(
        name: "Phil Foden",
        power: 83,
        age: 22,
        position: "Midfielder",
        nationality: "England",
        skills: "Dribbling, Passing, Vision",
        jerseyNumber: 47,
        stamina: 78,
      ),
      Player(
        name: "Mason Mount",
        power: 83,
        age: 24,
        position: "Midfielder",
        nationality: "England",
        skills: "Passing, Vision, Work rate",
        jerseyNumber: 19,
        stamina: 79,
      ),
      Player(
        name: "Hugo Lloris",
        power: 85,
        age: 36,
        position: "Goalkeeper",
        nationality: "France",
        skills: "Reflexes, Leadership, Positioning",
        jerseyNumber: 1,
        stamina: 75,
      ),
      Player(
        name: "Ciro Immobile",
        power: 84,
        age: 33,
        position: "Forward",
        nationality: "Italy",
        skills: "Finishing, Positioning, Penalties",
        jerseyNumber: 17,
        stamina: 77,
      ),
      Player(
        name: "Christian Eriksen",
        power: 83,
        age: 31,
        position: "Midfielder",
        nationality: "Denmark",
        skills: "Passing, Vision, Set pieces",
        jerseyNumber: 24,
        stamina: 75,
      ),
      Player(
        name: "Thomas Müller",
        power: 83,
        age: 33,
        position: "Midfielder",
        nationality: "Germany",
        skills: "Positioning, Passing, Work rate",
        jerseyNumber: 25,
        stamina: 77,
      ),
      Player(
        name: "Angel Correa",
        power: 82,
        age: 27,
        position: "Forward",
        nationality: "Argentina",
        skills: "Dribbling, Speed, Creativity",
        jerseyNumber: 10,
        stamina: 79,
      ),
      Player(
        name: "Wojciech Szczęsny",
        power: 84,
        age: 32,
        position: "Goalkeeper",
        nationality: "Poland",
        skills: "Reflexes, Handling, Positioning",
        jerseyNumber: 1,
        stamina: 74,
      ),
      Player(
        name: "Fabinho",
        power: 85,
        age: 29,
        position: "Midfielder",
        nationality: "Brazil",
        skills: "Tackling, Passing, Strength",
        jerseyNumber: 3,
        stamina: 81,
      ),
      Player(
        name: "Raphaël Varane",
        power: 86,
        age: 29,
        position: "Defender",
        nationality: "France",
        skills: "Tackling, Positioning, Speed",
        jerseyNumber: 19,
        stamina: 79,
      ),
      Player(
        name: "Frenkie de Jong",
        power: 84,
        age: 26,
        position: "Midfielder",
        nationality: "Netherlands",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 21,
        stamina: 80,
      ),
      Player(
        name: "Bernardo Silva",
        power: 85,
        age: 28,
        position: "Midfielder",
        nationality: "Portugal",
        skills: "Dribbling, Passing, Vision",
        jerseyNumber: 20,
        stamina: 81,
      ),
      Player(
        name: "Jorginho",
        power: 83,
        age: 31,
        position: "Midfielder",
        nationality: "Italy",
        skills: "Passing, Vision, Set pieces",
        jerseyNumber: 5,
        stamina: 77,
      ),
      Player(
        name: "Marco Verratti",
        power: 83,
        age: 30,
        position: "Midfielder",
        nationality: "Italy",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 6,
        stamina: 76,
      ),
      Player(
        name: "Riyad Mahrez",
        power: 84,
        age: 31,
        position: "Forward",
        nationality: "Algeria",
        skills: "Dribbling, Passing, Creativity",
        jerseyNumber: 26,
        stamina: 78,
      ),
      Player(
        name: "César Azpilicueta",
        power: 84,
        age: 33,
        position: "Defender",
        nationality: "Spain",
        skills: "Tackling, Leadership, Passing",
        jerseyNumber: 28,
        stamina: 80,
      ),
      Player(
        name: "Aymeric Laporte",
        power: 84,
        age: 28,
        position: "Defender",
        nationality: "Spain",
        skills: "Tackling, Positioning, Passing",
        jerseyNumber: 14,
        stamina: 79,
      ),
      Player(
        name: "Memphis Depay",
        power: 84,
        age: 28,
        position: "Forward",
        nationality: "Netherlands",
        skills: "Dribbling, Finishing, Speed",
        jerseyNumber: 10,
        stamina: 78,
      ),
      Player(
        name: "Timo Werner",
        power: 83,
        age: 26,
        position: "Forward",
        nationality: "Germany",
        skills: "Speed, Finishing, Positioning",
        jerseyNumber: 11,
        stamina: 77,
      ),
      Player(
        name: "Christian Pulisic",
        power: 83,
        age: 25,
        position: "Forward",
        nationality: "USA",
        skills: "Dribbling, Speed, Creativity",
        jerseyNumber: 10,
        stamina: 77,
      ),
      Player(
        name: "Kalvin Phillips",
        power: 82,
        age: 26,
        position: "Midfielder",
        nationality: "England",
        skills: "Tackling, Passing, Stamina",
        jerseyNumber: 23,
        stamina: 79,
      ),
      Player(
        name: "Achraf Hakimi",
        power: 85,
        age: 24,
        position: "Defender",
        nationality: "Morocco",
        skills: "Speed, Tackling, Crossing",
        jerseyNumber: 2,
        stamina: 81,
      ),
      Player(
        name: "Declan Rice",
        power: 82,
        age: 24,
        position: "Midfielder",
        nationality: "England",
        skills: "Tackling, Passing, Positioning",
        jerseyNumber: 41,
        stamina: 79,
      ),
      Player(
        name: "James Maddison",
        power: 82,
        age: 25,
        position: "Midfielder",
        nationality: "England",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 10,
        stamina: 78,
      ),
      Player(
        name: "Rodri",
        power: 83,
        age: 27,
        position: "Midfielder",
        nationality: "Spain",
        skills: "Passing, Positioning, Tackling",
        jerseyNumber: 16,
        stamina: 79,
      ),
      Player(
        name: "Niklas Süle",
        power: 83,
        age: 26,
        position: "Defender",
        nationality: "Germany",
        skills: "Tackling, Strength, Positioning",
        jerseyNumber: 4,
        stamina: 80,
      ),
      Player(
        name: "Marquinhos",
        power: 84,
        age: 28,
        position: "Defender",
        nationality: "Brazil",
        skills: "Tackling, Passing, Leadership",
        jerseyNumber: 5,
        stamina: 81,
      ),
      Player(
        name: "Alexis Sánchez",
        power: 82,
        age: 33,
        position: "Forward",
        nationality: "Chile",
        skills: "Dribbling, Passing, Finishing",
        jerseyNumber: 7,
        stamina: 74,
      ),
      Player(
        name: "Luis Díaz",
        power: 83,
        age: 25,
        position: "Forward",
        nationality: "Colombia",
        skills: "Speed, Dribbling, Finishing",
        jerseyNumber: 23,
        stamina: 79,
      ),
      Player(
        name: "Coutinho",
        power: 81,
        age: 30,
        position: "Midfielder",
        nationality: "Brazil",
        skills: "Passing, Dribbling, Creativity",
        jerseyNumber: 10,
        stamina: 75,
      ),
      Player(
        name: "Mats Hummels",
        power: 82,
        age: 33,
        position: "Defender",
        nationality: "Germany",
        skills: "Tackling, Positioning, Leadership",
        jerseyNumber: 15,
        stamina: 76,
      ),
      Player(
        name: "Dusan Vlahovic",
        power: 84,
        age: 23,
        position: "Forward",
        nationality: "Serbia",
        skills: "Finishing, Strength, Positioning",
        jerseyNumber: 9,
        stamina: 80,
      ),
      Player(
        name: "Julián Álvarez",
        power: 83,
        age: 23,
        position: "Forward",
        nationality: "Argentina",
        skills: "Finishing, Dribbling, Speed",
        jerseyNumber: 19,
        stamina: 79,
      ),
      Player(
        name: "Andrés Iniesta",
        power: 80,
        age: 38,
        position: "Midfielder",
        nationality: "Spain",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 8,
        stamina: 70,
      ),
      Player(
        name: "Gareth Bale",
        power: 83,
        age: 33,
        position: "Forward",
        nationality: "Wales",
        skills: "Speed, Shooting, Dribbling",
        jerseyNumber: 11,
        stamina: 75,
      ),
      Player(
        name: "Thiago Alcântara",
        power: 83,
        age: 31,
        position: "Midfielder",
        nationality: "Spain",
        skills: "Passing, Dribbling, Vision",
        jerseyNumber: 6,
        stamina: 75,
      ),
      Player(
        name: "Zlatan Ibrahimović",
        power: 85,
        age: 41,
        position: "Forward",
        nationality: "Sweden",
        skills: "Finishing, Strength, Positioning",
        jerseyNumber: 11,
        stamina: 70,
      ),
      Player(
        name: "Luis Alberto",
        power: 81,
        age: 30,
        position: "Midfielder",
        nationality: "Spain",
        skills: "Passing, Vision, Shooting",
        jerseyNumber: 10,
        stamina: 74,
      ),
      Player(
        name: "Emiliano Martínez",
        power: 84,
        age: 29,
        position: "Goalkeeper",
        nationality: "Argentina",
        skills: "Reflexes, Positioning, Handling",
        jerseyNumber: 23,
        stamina: 75,
      ),
    ];
    List<Player> shuffledPlayers = List.from(players);
    shuffledPlayers.shuffle();

    return Team(
      name: nameOfTeam,
      players: shuffledPlayers.take(11).toList(),

      trainer: trainer,
      cityOfTeam: cityOfTeam,
      teamColor: teamColor,
    );
  }

  Trainer createTrainer({
    required String name,
    required int age,
    required String nationality,
    required int motivation,
  }) {
    Trainer trainer = Trainer(
      name: name,
      age: age,
      nationality: nationality,
      motivation: motivation,
    );

    return trainer;
  }

  Stadium createStadium({
    required String name,
    required String location,
    int capacity = 0,
    double altitude = 0,
    String weather = '',
  }) {
    return Stadium(
      name: name,
      location: location,
      capacity: capacity,
      altitude: altitude,
      weather: weather,
    );
  }
}
