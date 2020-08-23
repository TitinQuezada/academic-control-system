import 'package:flutter/material.dart';

Color getQualificationColor(int qualification) {
  if (qualification < 70) {
    return Colors.red;
  } else {
    if (qualification >= 70 && qualification < 80) {
      return Colors.orange;
    } else {
      if (qualification >= 80 && qualification < 90) {
        return Colors.blue;
      } else {
        return Colors.green;
      }
    }
  }
}

Color getAverageColor(double average) {
  if (average < 2.0) {
    return Colors.red;
  } else {
    if (average >= 2.0 && average < 3.0) {
      return Colors.orange;
    } else {
      if (average >= 3.0 && average < 3.8) {
        return Colors.blue;
      } else {
        return Colors.green;
      }
    }
  }
}

Color getAssignmentQualificationColor(double worth, double qualification) {
  final porcent = (qualification / worth) * 100;

  if (porcent < 70) {
    return Colors.red;
  } else {
    if (porcent >= 70 && porcent < 80) {
      return Colors.orange;
    } else {
      if (porcent >= 80 && porcent < 90) {
        return Colors.blue;
      } else {
        return Colors.green;
      }
    }
  }
}
