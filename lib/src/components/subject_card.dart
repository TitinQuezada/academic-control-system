import 'package:flutter/material.dart';
import 'package:sca/src/models/subject_model.dart';
import 'package:sca/src/helpers/qualification_helper.dart' as helper;

class SubjectCard extends StatelessWidget {
  final Subject subject;
  final Function onTap;

  const SubjectCard(this.subject, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          title: Text(subject.name),
          subtitle: Text(subject.teacher),
          leading: _buildLeading(),
          trailing: _buildTrailing(),
        ),
      ),
    );
  }

  Widget _buildLeading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Calificacion'),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '${subject.qualification}',
          style: TextStyle(
              color: helper.getQualificationColor(subject.qualification)),
        )
      ],
    );
  }

  Widget _buildTrailing() {
    return PopupMenuButton(
      onSelected: (value) => print(value),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: 0,
            child: Text('Agregar asignacion'),
          ),
          PopupMenuItem(
            value: 1,
            child: Text('Editar asignatura'),
          )
        ];
      },
    );
  }
}
