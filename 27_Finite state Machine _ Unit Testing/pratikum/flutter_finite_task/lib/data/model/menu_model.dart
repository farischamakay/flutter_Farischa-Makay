class MenuModel {
  MenuModel({
    required this.id,
    required this.name,
  });

  factory MenuModel.fromJson(dynamic json) {
    return MenuModel(id: json['id'], name: json['name']);
  }

  late int id;
  late String name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}

class ResponseMenu {
  final List<MenuModel> menus;

  ResponseMenu({
    required this.menus,
  });

  factory ResponseMenu.fromJson(List<dynamic> parsedJson) {
    List<MenuModel> menus = <MenuModel>[];
    menus = parsedJson.map((i) => MenuModel.fromJson(i)).toList();
    return ResponseMenu(menus: menus);
  }
}
