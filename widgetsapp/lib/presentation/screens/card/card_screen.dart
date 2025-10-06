import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const cards = <Map<String, dynamic>>[
  {'elevetion': 0.0, 'label': 'Elevation 1'},

  {'elevetion': 1.0, 'label': 'Elevation 2'},

  {'elevetion': 2.0, 'label': 'Elevation 3'},

  {'elevetion': 3.0, 'label': 'Elevation 4'},

  {'elevetion': 4.0, 'label': 'Elevation %'},
];

class CardScreen extends StatelessWidget {
  static const String name = 'card_screen';

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: CardsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_sharp),
      ),
    );
  }
}

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (c) => CardType1(label: c['label'], cardElevation: c['elevetion']),
          ),
          ...cards.map(
            (c) => CardType1(label: c['label'], cardElevation: c['elevetion']),
          ),
        ],
      ),
    );
  }
}

class CardType1 extends StatelessWidget {
  final String label;
  final double cardElevation;

  const CardType1({
    super.key,
    required this.label,
    required this.cardElevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
            ),
            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}
