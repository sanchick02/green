class User {
  final String userID;
  final String name;
  final String email;
  final List<String> preferences;
  final int rewardPoints;
  final int explorationPoints;
  final int sustainabilityPoints;
  final List<String> travelHistory;
  final double carbonFootprint;
  final List<CarbonFootprintHistoryItem> carbonFootprintHistory;

  User({
    required this.userID,
    required this.name,
    required this.email,
    required this.preferences,
    required this.rewardPoints,
    required this.explorationPoints,
    required this.sustainabilityPoints,
    required this.travelHistory,
    required this.carbonFootprint,
    required this.carbonFootprintHistory,
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
