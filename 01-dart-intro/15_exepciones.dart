//Un future ofrece el resultado de una operación async,
//son un acuerdo de un valor que se tendrá
//se ven como una promesa

void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('http//:3000/');
    print('FIn del programa $value');
  } on Exception {
    print("Algo supremamente mal pasó");
  } catch (e) {
    print(e);
  } finally {
    print("Fin del try catch");
  }
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  throw Exception('Not params on URL');

  //return 'Valor de retorno ';
}
