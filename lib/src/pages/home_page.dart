import 'package:flutter/material.dart';
import 'package:sca/src/models/college._model.dart';

class HomePage extends StatelessWidget {
  final colleges = CollegeModel.getColleges();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Centros de estudio'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: colleges.length,
          itemBuilder: (BuildContext context, int index) {
            return buildCards(context, colleges[index]);
          },
        ),
        floatingActionButton: buildFloatinActionButton());
  }

  Widget buildCards(BuildContext context, CollegeModel college) {
    return Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, 'periods'),
          child: Container(
            height: 80.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${college.name}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('${college.career}')
              ],
            ),
          ),
        ));
  }

  Widget buildFloatinActionButton() {
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
