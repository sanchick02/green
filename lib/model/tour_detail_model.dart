import 'package:green/model/destination_model.dart';

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