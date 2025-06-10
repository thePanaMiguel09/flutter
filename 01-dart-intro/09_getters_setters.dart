void main() {
  final mySquare = Square(side: 10);

  mySquare.side = 5;

  print("Area ${mySquare.area}");
}

class Square {
  //Para definir un atributo private, se usa _atributo
  double _side;

  Square({required double side}) : _side = side;

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
