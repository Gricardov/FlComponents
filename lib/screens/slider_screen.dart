import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                //divisions: 10,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                        print(value);
                      }
                    : null),

            Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value ?? false;
                  });
                }),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                setState(() {
                  _sliderEnabled = value ?? false;
                });
                print(value);
              },
            ),

            Switch(
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value;
                  });
                }),

            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                setState(() {
                  _sliderEnabled = value;
                });
                print(value);
              },
            ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                setState(() {
                  _sliderEnabled = value;
                });
                print(value);
              },
            ),

            const AboutListTile(),

            Expanded(
              // Esto es como un flex:1, porque toma el ancho restante
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            //SizedBox(height: 100,)
          ],
        ));
  }
}
