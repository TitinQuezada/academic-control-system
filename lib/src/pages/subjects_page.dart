import 'package:flutter/material.dart';
import 'package:sca/src/components/application_app_bar.dart';
import 'package:sca/src/components/subject_card.dart';
import 'package:sca/src/models/subject_model.dart';

class SubjectsPage extends StatelessWidget {
  final subjects = Subject.getSubjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar('Asignaturas'),
      body: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (BuildContext context, int index) {
        return buildCards(context, subjects[index]);
      },
    );
  }

  Widget buildCards(BuildContext context, Subject subject) {
    final Function goToAssignments =
        () => Navigator.pushNamed(context, 'assignments');
    return SubjectCard(subject, onTap: goToAssignments);
  }
}
