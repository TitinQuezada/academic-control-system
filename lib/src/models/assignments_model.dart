class Assignments {
  String name;
  String details;
  DateTime deliveredDate;
  bool delivered;
  double worth;
  double qualification;

  Assignments(
      {this.name,
      this.details,
      this.deliveredDate,
      this.delivered,
      this.worth,
      this.qualification});

  static List<Assignments> getAssignments() {
    return [
      Assignments(
          name: 'Tarea 1',
          details: 'hacer un video presentandose',
          deliveredDate: new DateTime(2020),
          delivered: false,
          worth: 10,
          qualification: 6),
      Assignments(
          name: 'Tarea 2',
          details: 'hacer un video de en que consiste hands son',
          deliveredDate: new DateTime(2020),
          delivered: true,
          worth: 10,
          qualification: 7),
      Assignments(
          name: 'Tarea 3',
          details: 'hacer un video de lo aprendido en clase',
          deliveredDate: new DateTime(2020),
          delivered: false,
          worth: 10,
          qualification: 8),
      Assignments(
          name: 'Tarea 4',
          details: 'hacer un video despidiendose',
          deliveredDate: new DateTime(2020),
          delivered: true,
          worth: 10,
          qualification: 9)
    ];
  }
}
