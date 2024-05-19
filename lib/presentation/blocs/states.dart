import 'package:equatable/equatable.dart';
import 'package:nossa_listinha/domain/entities/item.dart';

abstract class ItemState extends Equatable {
  @override
  List<Object> get props => [];
}

class ListenItems extends ItemState {}

class ToggleItem extends ItemState {}

class InitialLoading extends ItemState {}

class InitialLoaded extends ItemState {
  final List<Item> items;

  InitialLoaded(this.items);

  @override
  get props => [items];
}

class ItemError extends ItemState {
  final String message;

  ItemError(this.message);

  @override
  get props => [message];
}
