import 'package:nossa_listinha/domain/entities/item.dart';

class ItemFirebase extends Item {
  const ItemFirebase({
    required super.id,
    required super.name,
    required super.isChecked,
  });

  factory ItemFirebase.fromJson(Map<String, dynamic> json) {
    return ItemFirebase(
        id: json["id"], name: json["name"], isChecked: json["isChecked"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isChecked': isChecked,
    };
  }
}
