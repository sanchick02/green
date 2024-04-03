class Comparison {
  final String destinationName;
  final String comparedDestination1;
  final String comparedDestination2;
  final String destinationCost;
  final String comparedCost1;
  final String comparedCost2;
  final String destinationCarbon;
  final String comparedCarbon1;
  final String comparedCarbon2;

  final String destinationCrowd;
  final String comparedCrowd1;
  final String comparedCrowd2;

  Comparison(
      {required this.destinationName,
      required this.comparedDestination1,
      required this.comparedDestination2,
      required this.destinationCost,
      required this.comparedCost1,
      required this.comparedCost2,
      required this.destinationCarbon,
      required this.comparedCarbon1,
      required this.comparedCarbon2,
      required this.destinationCrowd,
      required this.comparedCrowd1,
      required this.comparedCrowd2});
}
