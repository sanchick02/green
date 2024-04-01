class Transport {
  final String documentID;
  final String type;
  final String origin;
  final String destination;
  final String priceRange;
  final String? operator;
  final List<String>? schedule;
  final String? sustainabilityNotes;

  Transport({
    required this.documentID,
    required this.type,
    required this.origin,
    required this.destination,
    required this.priceRange,
    this.operator,
    this.schedule,
    this.sustainabilityNotes,
  });
}
