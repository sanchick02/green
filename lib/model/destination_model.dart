abstract class DestinationDetailBase {
  String get destinationName;
  String get location;
  String get backgroundImage;
  String? get title;
}

// Define Destination class
class Destination implements DestinationDetailBase {
  @override
  final String destinationName;
  @override
  final String location;
  @override
  final String backgroundImage;
  final String? destinationDescription;
  @override
  final String? title;
  final String? longDescription;
  final String? locationTag;
  final String? region;
  final String? documentID;

  Destination({
    required this.destinationName,
    required this.location,
    required this.backgroundImage,
    this.destinationDescription,
    this.title,
    this.longDescription,
    this.locationTag,
    this.region,
    this.documentID,
  });
}

// Define ActivityDetail class
class ActivityDetail implements DestinationDetailBase {
  @override
  final String destinationName;
  @override
  final String title;
  @override
  final String backgroundImage;
  @override
  final String location;
  final double price;
  final String description;
  final List<String> photos;

  ActivityDetail({
    required this.destinationName,
    required this.title,
    required this.backgroundImage,
    required this.location,
    required this.price,
    required this.description,
    required this.photos,
  });
}