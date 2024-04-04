import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:green/model/destination_model.dart';

class ActivityProvider with ChangeNotifier {
  List<ActivityDetail> activityList = [];
  
  Future<void> fetchActivityData() async {
    try {
      await FirebaseFirestore.instance.collection("activities").get().then(
        (querySnapshot) {
          if (querySnapshot.docs.isNotEmpty) {
            print("Successfully completed");
            for (var docSnapshot in querySnapshot.docs) {
              ActivityDetail activity = ActivityDetail(
                destinationName: docSnapshot['destinationName'],
                title: docSnapshot['title'],
                backgroundImage: docSnapshot['backgroundImage'],
                location: docSnapshot['location'],
                price: docSnapshot['price'],
                description: docSnapshot['description'],
                photos: docSnapshot['photos'],
              );
              activityList.add(activity);
              print("YESSSSS");
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
