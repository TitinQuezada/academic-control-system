import 'package:flutter/material.dart';
import 'package:sca/src/models/college._model.dart';

class CollegeCard extends StatelessWidget {
  final CollegeModel college;
  final Function onTap;

  const CollegeCard(this.college, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 10.0,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 80.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${college.name}',
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
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
}
