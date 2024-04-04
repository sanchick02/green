import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:green/model/flight_detail_model.dart';

class FlightDetailProvider with ChangeNotifier {
  List<FlightDetail> flightDetailList = [];
  
  Future<void> fetchFlightDetailData() async {
    try {
      await FirebaseFirestore.instance.collection("flight_details").get().then(
        (querySnapshot) {
          if (querySnapshot.docs.isNotEmpty && flightDetailList.isEmpty) {
            print("Successfully completed");
            for (var docSnapshot in querySnapshot.docs) {
              FlightDetail flightDetail = FlightDetail(
                destinationName: docSnapshot['destinationName'],
                title: docSnapshot['title'],
                backgroundImage: docSnapshot['backgroundImage'],
                location: docSnapshot['location'],
                price: docSnapshot['price'],
                description: docSnapshot['description'],
                co2Description: docSnapshot['co2Description'],
                flightDepartureTime: docSnapshot['flightDepartureTime'],
                flightReturnTime: docSnapshot['flightReturnTime'],
                flightDestinationAirline: docSnapshot['flightDestinationAirline'],
                flightType: docSnapshot['flightType'],
                flightDuration: docSnapshot['flightDuration'],
              );
              flightDetailList.add(flightDetail);
            }
          }
        },
        onError: (e) => print("Error completing: $e"),
      );
      // Notify listeners about the change
      notifyListeners();
    } catch (error) {
      print("Error fetching data: $error");
      throw error; // Propagate the error
    }
  }
}
