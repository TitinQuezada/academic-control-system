import 'package:flutter/material.dart';
import 'package:sca/src/helpers/qualification_helper.dart';
import 'package:sca/src/models/assignments_model.dart';

class AssignmentsPage extends StatelessWidget {
  final assignments = Assignments.getAssignments();
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

  Widget buildCards(BuildContext context, Assignments assignments) {
    return Card(
        child: InkWell(
            onTap: () {},
            child: ListTile(
                title: Text('${assignments.name}'),
                subtitle: Column(
                  children: [
                    Text('Fecha de entrega: ${assignments.deliveredDate}'),
                    Row(
                      children: [
                        Text('Entregado: '),
                        getDeliveedIcon(assignments.delivered)
                      ],
                    )
                  ],
                ),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Valor'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('${assignments.worth.toInt()}'),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('Calificacion'),
                    Text(
                      '${assignments.qualification}',
                      style: TextStyle(
                        color: getAssignmentQualificationColor(
                            assignments.worth, assignments.qualification),
                      ),
                    )
                  ],
                ))));
  }

  Icon getDeliveedIcon(bool delivered) {
    if (delivered) {
      return Icon(
        Icons.check,
        color: Colors.green,
      );
    } else {
      return Icon(
        Icons.not_interested,
        color: Colors.red,
      );
    }
  }
}
