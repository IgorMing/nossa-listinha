import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nossa_listinha/models/Item.dart';

class Items extends Cubit<List<Item>> {
  Items() : super([]);

  void getItems() {
    // emit()
  }
}
