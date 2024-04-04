// Define AccommodationDetail class
import 'package:green/model/destination_model.dart';

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