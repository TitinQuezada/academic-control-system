import 'package:flutter/material.dart';
import 'package:sca/src/components/application_app_bar.dart';
import 'package:sca/src/components/period_card.dart';
import 'package:sca/src/models/academic_period_model.dart';

class PeriodsPage extends StatelessWidget {
  final periods = AcademicPeriodModel.getAcademicPeriods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar('Periodos'),
      body: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10), child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildPeriods(),
        _buildFooter(),
      ],
    );
  }

  Widget _buildFooter() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }

  Widget _buildPeriods() {
    return Expanded(
      child: ListView.builder(
        itemCount: periods.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCards(context, periods[index]);
        },
      ),
    );
  }

  Widget buildCards(BuildContext context, AcademicPeriodModel period) {
    Function goToSubjects = () => Navigator.pushNamed(context, 'subjects');
    return PeriodCard(period, onTap: goToSubjects);
  }
}
