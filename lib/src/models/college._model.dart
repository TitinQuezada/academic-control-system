class CollegeModel {
  String id;
  String name;
  String career;

  CollegeModel({this.id, this.name, this.career});

  static List<CollegeModel> getColleges() {
    return [
      CollegeModel(
          id: '123456', name: 'INTEC', career: 'Ingenieria en mecatronica'),
      CollegeModel(
          id: '874512',
          name: 'ITLA',
          career: 'Tecnologo en desarrollo de software')
    ];
  }
}
