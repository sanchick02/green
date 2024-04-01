class Package {
  final String documentID;
  final String title;
  final String destination;
  final int duration;
  final double price;
  final List<String> itinerary;
  final String accommodation;
  final String theme;
  final List<String> images;
  final int maxParticipants;

  Package({
    required this.documentID,
    required this.title,
    required this.destination,
    required this.duration,
    required this.price,
    required this.itinerary,
    required this.accommodation,
    required this.theme,
    required this.images,
    required this.maxParticipants,
  });
}
