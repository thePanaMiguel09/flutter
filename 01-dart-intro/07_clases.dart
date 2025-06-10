void main() {
  final Hero superMan = Hero("SuperMan", "Fly");
  print(superMan);
}

class Hero {
  String name;
  String power;

  Hero(this.name, this.power);

  @override
  String toString() {
    return "$name $power";
  }
}
