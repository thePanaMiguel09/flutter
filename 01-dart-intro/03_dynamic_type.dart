void main() {
  //dynamic es un tipo de dato el cual por
  //defecto es null, además de que puede ser
  //cualquier tipo de dato

  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};

  print("""
      $errorMessage

  """);
}
