import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:green/model/destination_model.dart';

class DestinationProvider with ChangeNotifier {
  Destination destinationProviderData = Destination(
    destinationName: '', 
    location: '', 
    backgroundImage: '',
    destinationDescription: '',
    title: '',
    longDescription:'',
    locationTag:'',
    region:'',
    documentID:'',
    );
    List<Destination> destinationList = [];
    
  
Future<void> fetchDestinationData() async {
    try {
      // Access Firestore collection

  await FirebaseFirestore.instance.collection("destinations").get().then(
  (querySnapshot) {
    if (querySnapshot.docs.isNotEmpty) {
      print("Successfully completed");
      for (var docSnapshot in querySnapshot.docs) {
        Destination destination = Destination(
        destinationName: docSnapshot['destinationName'],
        location: docSnapshot['location'],
        backgroundImage: docSnapshot['backgroundImage'],
        destinationDescription: docSnapshot['destinationDescription'],
        title: docSnapshot['title'],
        longDescription: docSnapshot['longDescription'],
        locationTag: docSnapshot['locationTag'],
        region: docSnapshot['region'],
        documentID: docSnapshot['documentID'],
        );
        destinationList.add(destination);// Get document ID;
  }
}
  },
  onError: (e) => print("Error completing: $e"),
);
// Notify listeners about the change
//notifyListeners();

    } catch (error) {
      print("Error fetching data: $error");
      throw error; // Propagate the error
    }
  }
   //List<Destination> get getDestinationList => destinationList;
}