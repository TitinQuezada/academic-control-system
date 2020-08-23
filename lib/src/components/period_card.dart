import 'package:flutter/material.dart';
import 'package:sca/src/models/academic_period_model.dart';

class PeriodCard extends StatelessWidget {
  final AcademicPeriodModel period;
  final Function onTap;

  const PeriodCard(this.period, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        onTap: onTap,
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildListTile(),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildListTile() {
    return ListTile(
      title: Row(
        children: [
          Text('Periodo: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('${period.initialMonth} - ${period.finishMonth}')
        ],
      ),
      subtitle: Text(
        '${period.year}',
      ),
      trailing: PopupMenuButton(
        onSelected: (value) => print(value),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              value: 0,
              child: Text('Agregar materia'),
            ),
            PopupMenuItem(
              value: 1,
              child: Text('Editar periodo'),
            )
          ];
        },
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Text(
        '${period.college} - ${period.carrer}',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
