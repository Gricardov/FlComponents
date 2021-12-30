import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Slash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tipo 1')),
        body: ListView(children: [
          ...options
              .map(
                (game) => ListTile(
                    leading: const Icon(Icons.ac_unit_outlined),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined)),
              )
              .toList(),
              const Divider()
        ]));
  }
}
