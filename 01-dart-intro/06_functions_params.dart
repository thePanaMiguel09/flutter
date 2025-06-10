void main() {
  print(greetEveryOne());
  print(arrowFunc());
  print(add(5, 9));
  print(addArrow(7, 3));
  print(optionalParam(3));
  print(greetPerson(name: "Miguel", message: "Holaaa"));
}

//Función sin parametros, tipada
String greetEveryOne() {
  return 'Hello everyone';
}

//Arrow function, función flecha donde se retorna directamente, no se puede contruir el cuerpo de la func.. {}
String arrowFunc() => 'Hello since arrow function';

//Added two nums
int add(int a, int b) {
  return a + b;
}

//add with arrow function
int addArrow(int a, int b) => a + b;

//Optional param
int optionalParam(int a, [int? b]) {
  //Preguntamos si b tiene un valor, si es null lo hacemos igual a 0
  b ??= 0;

  return a + b;
}

//dart ofrece una forma de darle
//nombre a los parms, orden

//Para hacer obligatorio un parametro,usamos la palabra reservada required
//Al poner los params entre {} se convierten en opcionales,
//pero eso hace que al darle un tipo de dato específico, genere un error
//al hacer que un param opcional que por defecto es null,
//tenga que recibir un tipo de dato, por lo tanto,
//podemos asignar un valor por defecto o con la
//palabra reservada required

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message, $name';
}
