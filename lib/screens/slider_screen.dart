import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders and checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 50,
                  max: 400,
                  activeColor: AppTheme.primary,
                  //divisions: 10,
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                    print(value);
                  }),
              Image(
                image: const NetworkImage(
                    'http://pngimg.com/uploads/batman/batman_PNG51.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              SizedBox(height: 100,)
            ],
          ),
        ));
  }
}
