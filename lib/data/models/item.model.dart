class ItemModel {
  String id;
  String name;
  bool isChecked;

  ItemModel({required this.id, required this.name, required this.isChecked});

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
      isChecked: json['isChecked'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isChecked': isChecked,
    };
  }
}
