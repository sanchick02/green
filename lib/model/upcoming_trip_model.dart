class UpcomingTrip {
  final String destinationName;
  final String startDate;
  final String endDate;
  final int numOfAdult;
  final int numOfKid;
  final int numOfSenior;
  final double totAmountPaid;
  final String image;

  UpcomingTrip(
      {required this.destinationName,
      required this.startDate,
      required this.endDate,
      required this.numOfAdult,
      required this.numOfKid,
      required this.numOfSenior,
      required this.totAmountPaid,
      required this.image});
}
