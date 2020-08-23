import 'package:flutter/material.dart';
import 'src/routes/routes.dart' as routes;
import 'src/themes/themes.dart' as themes;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: routes.getRoutes(),
      theme: themes.getThemes(),
    );
  }
}
