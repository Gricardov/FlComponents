import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        "home": (BuildContext context) => const HomeScreen(),
        "ListView1": (BuildContext context) => const ListView1Screen(),
        "ListView2": (BuildContext context) => const ListView2Screen(),
        "alert": (BuildContext context) => const AlertScreen(),
        "card": (BuildContext context) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        // Aquí entra cuando una ruta no existe (ruta dinámica)
        // Devuelve otra ruta
        print(settings);
        return MaterialPageRoute(builder: (context) => const ListView1Screen());
      },
    );
  }
}
