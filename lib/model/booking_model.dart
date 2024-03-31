class Booking {
  final String documentID;
  final String userID;
  final String? packageID;
  final String destinationID;
  final String? accommodationID;
  final List<String> activities;
  final DateTime startDate;
  final DateTime endDate;
  final String status;
  final int guestCount;

  Booking({
    required this.documentID,
    required this.userID,
    this.packageID,
    required this.destinationID,
    this.accommodationID,
    required this.activities,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.guestCount,
  });
}
