class AcademicPeriodModel {
  int number;
  int year;
  String initialMonth;
  String finishMonth;
  String college;
  String carrer;

  AcademicPeriodModel(
      {this.number,
      this.year,
      this.initialMonth,
      this.finishMonth,
      this.college,
      this.carrer});

  static List<AcademicPeriodModel> getAcademicPeriods() {
    return [
      new AcademicPeriodModel(
          number: 1,
          year: 2020,
          initialMonth: 'Febrero',
          finishMonth: 'Abril',
          college: 'INTEC',
          carrer: 'Ingenieria en mecatronica'),
      new AcademicPeriodModel(
          number: 2,
          year: 2020,
          initialMonth: 'Mayo',
          finishMonth: 'Julio',
          college: 'INTEC',
          carrer: 'Ingenieria en mecatronica')
    ];
  }
}
