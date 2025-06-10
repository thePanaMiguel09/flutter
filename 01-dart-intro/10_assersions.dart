void main() {
  final mySquare = Square(value: -1);

  print("Area ${mySquare.area}");
}

class Square {
  //Para definir un atributo private, se usa _atributo
  double _side;

  //Las aserciones son reglas de negocio
  Square({required double value})
    : assert(value <= 0, 'Side must be greater than 0'),
      _side = value;

  //De esta forma definimos un getter en DART, mediante la palabra reservada get
  double get area {
    return _side * _side;
  }

  //Definimos un setter mediante la palabra reservada set
  set side(double value) {
    if (value <= 0) {
      throw "Value must be greater than 0";
    }

    _side = value;
  }

  //Para definir un método, indicamos el tipo de dato de retorno, nombre del método y los params que este recibe
  double calculateArea({required double side}) {
    return side * side;
  }
}
