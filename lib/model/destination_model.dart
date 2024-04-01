class Destination {
  final String destinationName;
  final String state;
  final String image;
  final String description;
  final String ?shortDescription;
  final String ?locationTag;
  final String region;
  final String ?documentID;

  Destination(
      {required this.destinationName,
      required this.state,
      required this.image,
      required this.description,
      this.shortDescription,
      this.locationTag,
      required this.region,
      this.documentID,
      });
}
