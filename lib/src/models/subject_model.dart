class Subject {
  String name;
  String teacher;
  int qualification;

  Subject({this.name, this.teacher, this.qualification});

  static List<Subject> getSubjects() {
    return [
      Subject(
          name: 'Seminario de ingenieria en mecatronica',
          teacher: 'Irving Cedeño',
          qualification: 60),
      Subject(
          name: 'Dibujo mecanico 1', teacher: 'Pedro Pablo', qualification: 70),
      Subject(
          name: 'Quehacer cientifico',
          teacher: 'Jose Ramon Suriel',
          qualification: 80),
      Subject(name: 'Ingles 2', teacher: 'Andres tiburcio', qualification: 90)
    ];
  }
}
