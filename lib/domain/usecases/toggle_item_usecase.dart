import 'package:nossa_listinha/domain/repositories/item_repository.dart';

class ToggleItem {
  final ItemRepository _repository;

  ToggleItem(this._repository);

  Future<void> call(String itemId, bool? isChecked) async {
    await _repository.toggle(itemId, isChecked: isChecked);
  }
}
