//Un future ofrece el resultado de una operación async,
//son un acuerdo de un valor que se tendrá
//se ven como una promesa

void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('http//:3000/');
    print('FIn del programa $value');
  } catch (e) {
    print(e);
  }
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 5));
  return 'Valor de retorno ';
}
