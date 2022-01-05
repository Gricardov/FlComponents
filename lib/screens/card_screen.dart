import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Puede ser .all si todos van a ser iguales
          children: [
            Card(
                child: Column(
              children: const [
                ListTile(
                    leading: Icon(
                      Icons.photo_album_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text('Soy un tístulo'),
                    subtitle: Text('Duis duis tempor et duis eu tempor est velit commodo tempor.'),),
              ],
            ))
          ],
        ));
  }
}
