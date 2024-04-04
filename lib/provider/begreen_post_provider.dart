import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green/model/bereal_model.dart';
import 'package:green/screens/begreen.dart';

class BeGreenProvider with ChangeNotifier {
  List<BeReal> forumPosts = [];

  Future<void> fetchUserData() async {
    if (FirebaseAuth.instance.currentUser != null) {
      try {
        // Get the reference to your collection
        CollectionReference userForumCollection =
            FirebaseFirestore.instance.collection('BeGreen');

        // Query the documents within the collection
        QuerySnapshot userPostsSnapshot = await userForumCollection.get();

        // Extract data from the documents
        List<BeReal> fetchedPosts = userPostsSnapshot.docs.map((doc) {
          return BeReal(
            uid: doc['uid'],
            pid: doc['pid'],
            userImage: doc['userImage'],
            userName: doc['username'],
            time: doc['time'],
            postImage: doc['imageUrl'],
            likes: doc['likes'],
            greenRewards: doc['BeGreenReward'],
          );
        }).toList();

        // Update the list of forum posts
        forumPosts = fetchedPosts;

        // Notify listeners about the change in data
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
