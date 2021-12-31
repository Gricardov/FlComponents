import 'package:fl_components/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "ListView1": (BuildContext context) => const ListView1Screen(),
    "ListView2": (BuildContext context) => const ListView2Screen(),
    "alert": (BuildContext context) => const AlertScreen(),
    "card": (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
// Aquí entra cuando una ruta no existe (ruta dinámica)
    // Devuelve otra ruta
    print(settings);
    return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
}
