void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  // final nuclearPaint = NuclearPlant(energyLeft: 50);

  print(windPlant.energyLeft);
  // print(nuclearPaint.energyLeft);

  print(chargePhone(windPlant));
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, watter }

//Las clases abstractas no pueden tener instancias
abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends o implements

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// class NuclearPlant implements EnergyPlant {
//   @override
//   double energyLeft;

//   @override
//   final PlantType type = PlantType.nuclear;

//   NuclearPlant({required this.energyLeft});

//   @override
//   void consumeEnergy(double amount) {
//     energyLeft -= amount * 0.5;
//   }
// }
