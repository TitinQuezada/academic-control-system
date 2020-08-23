import 'package:flutter/material.dart';
import 'package:sca/src/pages/assignments_page.dart';
import 'package:sca/src/pages/home_page.dart';
import 'package:sca/src/pages/periods_page.dart';
import 'package:sca/src/pages/subjects_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  Map<String, WidgetBuilder> routes = {
    'home': (context) => HomePage(),
    'periods': (context) => PeriodsPage(),
    'subjects': (context) => SubjectsPage(),
    'assignments': (context) => AssignmentsPage()
  };
  return routes;
}
