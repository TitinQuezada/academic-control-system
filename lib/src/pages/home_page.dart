import 'package:flutter/material.dart';
import 'package:sca/src/components/application_app_bar.dart';
import 'package:sca/src/components/college_card.dart';
import 'package:sca/src/models/college._model.dart';

class HomePage extends StatelessWidget {
  final colleges = CollegeModel.getColleges();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar('Centros de estudio'),
      body: Container(
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [_buildColleges(), _buildFooter()],
    );
  }

  Widget _buildFooter() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }

  Widget _buildColleges() {
    return Expanded(
      child: ListView.builder(
        itemCount: colleges.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCards(context, colleges[index]);
        },
      ),
    );
  }

  Widget _buildCards(BuildContext context, CollegeModel college) {
    Function onTap = _goToPeriods(context);
    return CollegeCard(college, onTap);
  }

  Function _goToPeriods(BuildContext context) {
    return () => Navigator.pushNamed(context, 'periods');
  }
}
