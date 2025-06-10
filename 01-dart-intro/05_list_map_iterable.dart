void main() {
  //Una list es un tip de dato que guarda elementos
  //como un arreglo []
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9];

  print("List original $numbers");
  print("List length ${numbers.length}");
  print("List original ${numbers.first}");
  print("List original ${numbers.last}");

  print("List original ${numbers.reversed}");

  //iterable se reconoce por los ()

  final reversedNum = numbers.reversed;
  print("Iteralbe $reversedNum");
  print("Iteralbe to List ${reversedNum.toList()}");

  //Un set es una estructura en el cual
  //sus valores son únicos, no se repiten, no
  //no duplicados
  print("Iteralbe to set ${reversedNum.toSet()}");

  final numbersGreatThan5 = numbers.where((num) {
    return num > 5;
    //retorna true si
    //se cumple o false si no
    //retorna un iterable
  });

  print('Number greater than 5: $numbersGreatThan5');

  //Eliminamos los duplicados, convirtiendo el iterable a un set.
  print(numbersGreatThan5.toSet());
}
