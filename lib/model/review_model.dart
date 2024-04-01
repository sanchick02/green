class Review {
  final String documentID;
  final String userID;
  final String targetID;
  final String targetType;
  final int rating;
  final String text;

  Review({
    required this.documentID,
    required this.userID,
    required this.targetID,
    required this.targetType,
    required this.rating,
    required this.text,
  });
}
