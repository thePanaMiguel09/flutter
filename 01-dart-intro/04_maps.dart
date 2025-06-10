void main() {
  //Un mapa es un tipo de datos de
  //pares de varoles, llave valor value pairs

  final Map<String, dynamic> pokemon = {
    'name': "Pikachu",
    'hp': 100,
    'isAlive': true,
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  print(pokemon);
  print('Name: ${pokemon["name"]}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
