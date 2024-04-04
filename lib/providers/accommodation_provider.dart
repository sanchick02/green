import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:green/model/acommodation_model.dart';

class AccommodationProvider with ChangeNotifier {
  List<AccommodationDetail> accommodationList = [];
  
  Future<void> fetchAccommodationData() async {
    try {
      await FirebaseFirestore.instance.collection("accommodations").get().then(
        (querySnapshot) {
          if (querySnapshot.docs.isNotEmpty && accommodationList.isEmpty) {
            print("Successfully completed");
            for (var docSnapshot in querySnapshot.docs) {
              AccommodationDetail accommodation = AccommodationDetail(
                destinationName: docSnapshot['destinationName'],
                title: docSnapshot['title'],
                backgroundImage: docSnapshot['backgroundImage'],
                destination: docSnapshot['destination'],
                location: docSnapshot['location'],
                price: docSnapshot['price'],
                description: docSnapshot['description'],
                photos: docSnapshot['photos'],
              );
              accommodationList.add(accommodation);
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
