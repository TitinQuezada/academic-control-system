import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sca/src/helpers/qualification_helper.dart';
import 'package:sca/src/models/assignments_model.dart';

class AssignmentCard extends StatelessWidget {
  final Assignment assignment;
  final Function onTap;
  final TextStyle titleStyle = TextStyle(fontWeight: FontWeight.bold);

  AssignmentCard(this.assignment, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ListTile(
      title: Text(
        assignment.name,
        style: titleStyle,
      ),
      subtitle: _buildSubtitle(),
      leading: _buildLeading(),
      trailing: _buildTrailing(),
    );
  }

  Widget _buildSubtitle() {
    final date = DateFormat.yMd().add_jm().format(assignment.deliveredDate);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Fecha de entrega: ', style: titleStyle),
            Text(date),
          ],
        ),
        Row(
          children: [
            Text(
              'Entregado: ',
              style: titleStyle,
            ),
            getDeliveedIcon(assignment.delivered)
          ],
        )
      ],
    );
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

  Widget _buildLeading() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Valor',
          style: titleStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('${assignment.worth.toInt()}'),
      ],
    );
  }

  Widget _buildTrailing() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Calificacion',
          style: titleStyle,
        ),
        Text(
          '${assignment.qualification}',
          style: TextStyle(
            color: getAssignmentQualificationColor(
                assignment.worth, assignment.qualification),
          ),
        )
      ],
    );
  }
}
