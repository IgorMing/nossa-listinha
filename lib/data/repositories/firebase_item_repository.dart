import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nossa_listinha/data/models/item_firebase.dart';
import 'package:nossa_listinha/domain/entities/item.dart';
import 'package:nossa_listinha/domain/repositories/item_repository.dart';

class FirebaseItemRepository implements ItemRepository {
  final FirebaseFirestore _firestore;

  FirebaseItemRepository(this._firestore);

  @override
  Stream<List<Item>> listen() {
    return _firestore.collection('items').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return ItemFirebase.fromJson({"id": doc.id, ...doc.data()});
      }).toList();
    });
  }

  @override
  Future<void> toggle(String itemId, {bool? isChecked = false}) async {
    final item = await _firestore.collection('items').doc(itemId).get();
    print(item);

    await _firestore
        .collection('items')
        .doc(itemId)
        .update({'isChecked': isChecked});
  }
}
