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
  final String destinationDescription;
  @override
  final String? title;

  Destination({
    required this.destinationName,
    required this.location,
    required this.backgroundImage,
    required this.destinationDescription,
    this.title,
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

// Define AccommodationDetail class
class AccommodationDetail implements DestinationDetailBase {
  @override
  final String destinationName;
  @override
  final String title;
  @override
  final String backgroundImage;
  final String destination;
  @override
  final String location;
  final double price;
  final String description;
  final List<String> photos;

  AccommodationDetail({
    required this.destinationName,
    required this.title,
    required this.backgroundImage,
    required this.destination,
    required this.location,
    required this.price,
    required this.description,
    required this.photos,
  });
}

// Define TourDetail class
class TourDetail implements DestinationDetailBase {
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
  final String description2;
  final List<String> photos;
  final String descriptionShort;

  TourDetail({
    required this.descriptionShort,
    required this.destinationName,
    required this.title,
    required this.backgroundImage,
    required this.location,
    required this.price,
    required this.description,
    required this.description2,
    required this.photos,
  });
}

// Define FlightDetail class
class FlightDetail implements DestinationDetailBase {
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
  final String? shortDescription;
  final String? locationTag;
  final String region;
  final String? documentID;

  Destination({
    required this.destinationName,
    required this.state,
    required this.image,
    required this.description,
    this.shortDescription,
    this.locationTag,
    required this.region,
    this.documentID,
  });
}
