//Un future ofrece el resultado de una operación async,
//son un acuerdo de un valor que se tendrá
//se ven como una promesa

void main() {
  print('Inicio del programa');

  httpGet('http//:3000/').then((value) {
    print(value);
  });

  print('FIn del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 5), () {
    return "Respuesta de la request";
  });
}
