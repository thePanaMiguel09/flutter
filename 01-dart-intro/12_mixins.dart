abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminador {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminador {}

class Gato extends Mamifero with Caminador {}

class Paloma extends Ave with Volador, Caminador {}

class Pato extends Ave with Nadador, Caminador, Volador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();
}
