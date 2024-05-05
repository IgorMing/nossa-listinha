import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nossa_listinha/data/datasources/item.datasource.dart';

class FirebaseDataSource implements ItemDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<Map<String, dynamic>>> getItems() async {
    final collection = await _firestore.collection('items').get();
    return collection.docs
        .map((item) => ({...item.data(), "id": item.id}))
        .toList();
  }
}
