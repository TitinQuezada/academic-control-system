import 'package:flutter/material.dart';
import 'package:sca/src/components/application_app_bar.dart';
import 'package:sca/src/components/assignment_card.dart';
import 'package:sca/src/models/assignments_model.dart';

class AssignmentsPage extends StatelessWidget {
  final assignments = Assignment.getAssignments();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar('Asignaciones'),
      body: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: assignments.length,
      itemBuilder: (BuildContext context, int index) {
        return AssignmentCard(assignments[index]);
      },
    );
  }
}
