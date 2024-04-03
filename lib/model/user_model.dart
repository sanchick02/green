class UserModel {
  // final String userID;
  // final String name;
  // final String email;
  // final List<String> preferences;
  // final int rewardPoints;
  // final int explorationPoints;
  // final int sustainabilityPoints;
  // final List<String> travelHistory;
  // final double carbonFootprint;
  // final List<CarbonFootprintHistoryItem> carbonFootprintHistory;
  String uid;
  String firstName;
  String lastName;
  String userName;
  String email;
  String gender;
  String imageURL;
  String dob;
  String age;

  UserModel({
    // required this.userID,
    // required this.name,
    // required this.email,
    // required this.preferences,
    // required this.rewardPoints,
    // required this.explorationPoints,
    // required this.sustainabilityPoints,
    // required this.travelHistory,
    // required this.carbonFootprint,
    // required this.carbonFootprintHistory,
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.gender,
    required this.imageURL,
    required this.dob,
    required this.age,
  });
}

class CarbonFootprintHistoryItem {
  final DateTime date;
  final double value;
  final String source;

  CarbonFootprintHistoryItem({
    required this.date,
    required this.value,
    required this.source,
  });
}
