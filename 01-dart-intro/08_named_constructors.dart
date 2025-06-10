void main() {
  final Map<String, dynamic> rawJSON = {
    'name': 'La Mujer Maravilla',
    'power': 'Fuerza',
    'isAlive': true,
  };

  final Hero ironman = Hero.fromJSON(rawJSON);

  print("Instancia de Hero desde JSON $ironman");

  //final ironman = Hero(name: "Tony Stark", power: "Dinero", isAlive: false);
  //print('Instancia de Hero normal $ironman');
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJSON(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : "Nooo"} ';
  }
}
