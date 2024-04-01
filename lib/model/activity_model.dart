class Activity {
  final String documentID;
  final String name;
  final String description;
  final String location;
  final double price;
  final String type;
  final String? operator;
  final String sustainabilityImpact;
  final List<String> availability;
  final String date;
  final String ?ticketPrices;
  final String image;

  Activity({
    required this.documentID,
    required this.name,
    required this.description,
    required this.location,
    required this.price,
    required this.type,
    this.operator,
    required this.sustainabilityImpact,
    required this.availability,
    required this.date,
    this.ticketPrices,
    required this.image,
  });
}
