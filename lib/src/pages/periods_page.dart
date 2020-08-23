import 'package:flutter/material.dart';
import 'package:sca/src/models/academic_period_model.dart';

class PeriodsPage extends StatelessWidget {
  final periods = AcademicPeriodModel.getAcademicPeriods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Periodos'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: periods.length,
          itemBuilder: (BuildContext context, int index) {
            return buildCards(context, periods[index]);
          },
        ),
        floatingActionButton: buildFloatingActionButton());
  }

  Widget buildCards(BuildContext context, AcademicPeriodModel period) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
          onTap: () => Navigator.pushNamed(context, 'subjects'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                title: Row(
                  children: [
                    Text('Periodo: ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
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
              ),
              Text(
                '${period.college} - ${period.carrer}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
              )
            ],
          )),
    );
  }

  Widget buildFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
