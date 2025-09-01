class TechnicalMachine {
  final int id;
  final Item? item;
  final Item? move;
  final Item? versionGroup;

  TechnicalMachine({
    this.id = 0,
    this.item,
    this.move,
    this.versionGroup,
  });

  factory TechnicalMachine.fromJson(Map<String, dynamic> json) {
    return TechnicalMachine(
      id: json['id'] ?? 0,
      item: json['item'] != null ? Item.fromJson(json['item']) : null,
      move: json['move'] != null ? Item.fromJson(json['move']) : null,
      versionGroup: json['version_group'] != null
          ? Item.fromJson(json['version_group'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (item != null) 'item': item!.toJson(),
      if (move != null) 'move': move!.toJson(),
      if (versionGroup != null) 'version_group': versionGroup!.toJson(),
    };
  }
}

class Item {
  final String name;
  final String url;

  Item({this.name = "", this.url = ""});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'] ?? "",
      url: json['url'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
