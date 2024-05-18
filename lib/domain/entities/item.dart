import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final String id;
  final String name;
  final bool isChecked;

  const Item({required this.id, required this.name, required this.isChecked});

  @override
  List<Object?> get props => [name, id, isChecked];
}
