import 'package:equatable/equatable.dart';
import 'package:nossa_listinha/domain/entities/item.dart';

abstract class ItemEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CheckEvent extends ItemEvent {
  final String itemId;
  final bool isChecked;

  CheckEvent(this.itemId, this.isChecked);

  @override
  get props => [itemId, isChecked];
}

class ListenEvent extends ItemEvent {
  final List<Item> items;

  ListenEvent(this.items);

  @override
  get props => [items];
}
