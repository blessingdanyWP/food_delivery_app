import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get Collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save order to db

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
      //add more field as necessary..
    });
  }
}
