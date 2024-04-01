class Accommodation {
  final String documentID;
  final String name;
  final String location;
  final String type;
  final String priceRange;
  final List<String> images;
  final List<String> sustainabilityCertifications;
  final List<String> amenities;
  final List<String> availability;

  Accommodation({
    required this.documentID,
    required this.name,
    required this.location,
    required this.type,
    required this.priceRange,
    required this.images,
    required this.sustainabilityCertifications,
    required this.amenities,
    required this.availability,
  });
}
