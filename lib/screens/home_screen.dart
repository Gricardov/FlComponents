import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.arrow_forward_ios_outlined),
                  title: const Text('Nombre de rata'),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());

                    // // pushReplacement no permite retroceder, destruye la vista actual por la otra
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, 'dart222');

                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
