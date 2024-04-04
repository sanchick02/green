import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:green/model/tour_detail_model.dart';

class TourProvider with ChangeNotifier {
  List<TourDetail> tourList = [];
  
  Future<void> fetchTourData() async {
    try {
      await FirebaseFirestore.instance.collection("tours").get().then(
        (querySnapshot) {
          if (querySnapshot.docs.isNotEmpty && tourList.isEmpty) {
            print("Successfully completed");
            for (var docSnapshot in querySnapshot.docs) {
              TourDetail tour = TourDetail(
                destinationName: docSnapshot['destinationName'],
                title: docSnapshot['title'],
                backgroundImage: docSnapshot['backgroundImage'],
                location: docSnapshot['location'],
                price: docSnapshot['price'],
                description: docSnapshot['description'],
                description2: docSnapshot['description2'],
                photos: docSnapshot['photos'],
                descriptionShort: docSnapshot['descriptionShort'],
              );
              tourList.add(tour);
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
