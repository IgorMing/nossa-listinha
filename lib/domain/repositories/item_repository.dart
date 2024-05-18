import 'package:nossa_listinha/domain/entities/item.dart';

abstract class ItemRepository {
  Stream<List<Item>> listen();
  Future<void> toggle(String itemId, {bool? isChecked});
}
