void main() {
  emitNumbers().listen((val) {
    print('Strem val $val');
  });
}

//Son un flujo de datos los cuales pueden ser un único valor, muchos o incluso ninguno
Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 3), (val) {
    return val;
  }).take(5);
}
