import 'package:nossa_listinha/data/datasources/item.datasource.dart';
import 'package:nossa_listinha/data/models/item.model.dart';

class ItemRepository {
  final ItemDataSource datasource;

  ItemRepository(this.datasource);

  Future<List<ItemModel>> getItems() async {
    final items = await datasource.getItems();
    return items
        .map(
          (item) => ItemModel.fromJson(item),
        )
        .toList();
  }
}
