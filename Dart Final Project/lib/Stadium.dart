class Stadium {
  String _name;
  String _location;
  int? _capacity;
  String? _weather;
  double? _altitude;

  Stadium({
    required String name,
    required String location,
    int? capacity,
    String? weather,
    double? altitude,
  }) : _name = name,
       _location = location,
       _capacity = capacity,
       _weather = weather,
       _altitude = altitude;

  String get name => _name;
  String get location => _location;
  int? get capacity => _capacity;
  String? get weather => _weather;
  double? get altitude => _altitude;

  set name(String value) => _name = value;
  set location(String value) => _location = value;
  set capacity(int? value) => _capacity = value;
  set weather(String? value) => _weather = value;
  set altitude(double? value) => _altitude = value;

  @override
  String toString() {
    // ANSI escape codes for colors
    const green = '\x1B[32m';
    const blue = '\x1B[34m';
    const cyan = '\x1B[36m';
    const yellow = '\x1B[33m';
    const reset = '\x1B[0m';

    return '''
${cyan}🏟 Stadium Info:${reset}
${green}Name:${reset} $_name
${green}Location:${reset} $_location
${green}Capacity:${reset} ${_capacity ?? 'Unknown'}
${green}Weather:${reset} ${_weather ?? 'Unknown'}
${green}Altitude:${reset} ${_altitude != null ? '$_altitude m' : 'Unknown'}
''';
  }
}
