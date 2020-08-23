import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sca/src/components/assignment_card.dart';
import 'package:sca/src/helpers/qualification_helper.dart';
import 'package:sca/src/models/assignments_model.dart';

class AssignmentsPage extends StatelessWidget {
  final assignments = Assignment.getAssignments();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asignaciones'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: assignments.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCards(context, assignments[index]);
        },
      ),
    );
  }

  Widget buildCards(BuildContext context, Assignment assignment) {
    return AssignmentCard(assignment);
  }

  _prueba(DateTime date) {
    final f = DateFormat.yMd().add_jm().format(date);
  }
}
