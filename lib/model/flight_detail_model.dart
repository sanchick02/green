import 'package:green/model/destination_model.dart';

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
  final String co2Description;
  final String flightDepartureTime;
  final String flightReturnTime;
  final String flightDestinationAirline;
  final String flightType;
  final String flightDuration;

  FlightDetail({
    required this.destinationName,
    required this.title,
    required this.backgroundImage,
    required this.location,
    required this.price,
    required this.description,
    required this.co2Description,
    required this.flightDepartureTime,
    required this.flightReturnTime,
    required this.flightDestinationAirline,
    required this.flightType,
    required this.flightDuration,
  });
}
