import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10), // Puede ser .all si todos van a ser iguales
          children: const [
            CustomCard1(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
                'https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperSmashBrosUltimate_02.jpg',
                name: 'Un hermoso título',),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                'https://oceandrive.com.ve/wp-content/uploads/2021/06/46428789_290362471684616_1180233436447647727_n-819x1024.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                'https://i.pinimg.com/564x/dc/d1/26/dcd12639f5cdf247043ff60ebd3f61d0.jpg'),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
                'https://media.gettyimages.com/photos/young-adult-female-couple-at-pride-parade-picture-id996877126?s=612x612'),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
