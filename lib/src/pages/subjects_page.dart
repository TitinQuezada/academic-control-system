import 'package:flutter/material.dart';
import 'package:sca/src/helpers/qualification_helper.dart' as helper;
import 'package:sca/src/models/subject_model.dart';

class SubjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final subjects = Subject.getSubjects();

    return Scaffold(
      appBar: AppBar(
        title: Text('Asignaturas'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCards(context, subjects[index]);
        },
      ),
    );
  }

  Widget buildCards(BuildContext context, Subject subject) {
    return Card(
        child: InkWell(
            onTap: () => Navigator.pushNamed(context, 'assignments'),
            child: ListTile(
              title: Text('${subject.name}'),
              subtitle: Text('${subject.teacher}'),
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Calificacion'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${subject.qualification}',
                    style: TextStyle(
                        color: helper
                            .getQualificationColor(subject.qualification)),
                  )
                ],
              ),
              trailing: PopupMenuButton(
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
              ),
            )));
  }
}
