class Assignment {
  String name;
  String details;
  DateTime deliveredDate;
  bool delivered;
  double worth;
  double qualification;

  Assignment(
      {this.name,
      this.details,
      this.deliveredDate,
      this.delivered,
      this.worth,
      this.qualification});

  static List<Assignment> getAssignments() {
    return [
      Assignment(
          name: 'Tarea 1',
          details: 'hacer un video presentandose',
          deliveredDate: new DateTime(2020),
          delivered: false,
          worth: 10,
          qualification: 6),
      Assignment(
          name: 'Tarea 2',
          details: 'hacer un video de en que consiste hands son',
          deliveredDate: new DateTime(2020),
          delivered: true,
          worth: 10,
          qualification: 7),
      Assignment(
          name: 'Tarea 3',
          details: 'hacer un video de lo aprendido en clase',
          deliveredDate: new DateTime(2020),
          delivered: false,
          worth: 10,
          qualification: 8),
      Assignment(
          name: 'Tarea 4',
          details: 'hacer un video despidiendose',
          deliveredDate: new DateTime(2020),
          delivered: true,
          worth: 10,
          qualification: 9)
    ];
  }
}
