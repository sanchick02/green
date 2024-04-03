class BeReal {
  final String documentID;
  final String userID;
  final String mediaURL;
  final String location;
  final DateTime timestamp;
  final bool verified;
  final int points;

  BeReal({
    required this.documentID,
    required this.userID,
    required this.mediaURL,
    required this.location,
    required this.timestamp,
    required this.verified,
    required this.points,
  });
}
