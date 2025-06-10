void main() {
  emitNumbers().listen((val) {
    print('Stream val $val');
  });
}

Stream<int> emitNumbers() async* {
  final values = [1, 2, 3, 4, 5];

  for (int i in values) {
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}
