class MostRecentModel {
  final String enName, arName, verses;

  MostRecentModel({
    required this.enName,
    required this.arName,
    required this.verses,
  });

  static List<MostRecentModel> listOfRecents = [
    MostRecentModel(enName: 'Al-Anbiya', arName: 'الأنبياء', verses: '112'),
    MostRecentModel(enName: 'Al-Fatiha', arName: 'الفاتحه', verses: '7'),
    MostRecentModel(enName: 'An-Nisa', arName: 'النساء', verses: '176'),
    MostRecentModel(enName: 'Aal-E-Imran', arName: 'آل عمران', verses: '200'),
  ];
}
