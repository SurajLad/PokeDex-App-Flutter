class ItemDetail {
  final List<Attributes> attributes;
  final Attributes? category;
  final int cost;
  final List<EffectEntries> effectEntries;
  final String? flingEffect;
  final int flingPower;
  final int id;
  final String name;
  final Sprites? sprites;

  ItemDetail({
    this.attributes = const [],
    this.category,
    this.cost = 0,
    this.effectEntries = const [],
    this.flingEffect,
    this.flingPower = 0,
    this.id = 0,
    this.name = "",
    this.sprites,
  });

  factory ItemDetail.fromJson(Map<String, dynamic> json) {
    return ItemDetail(
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((v) => Attributes.fromJson(v))
              .toList() ??
          [],
      category: json['category'] != null
          ? Attributes.fromJson(json['category'])
          : null,
      cost: json['cost'] ?? 0,
      effectEntries: (json['effect_entries'] as List<dynamic>?)
              ?.map((v) => EffectEntries.fromJson(v))
              .toList() ??
          [],
      flingEffect: json['fling_effect'],
      flingPower: json['fling_power'] ?? 0,
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      sprites:
          json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.map((v) => v.toJson()).toList(),
      if (category != null) 'category': category!.toJson(),
      'cost': cost,
      'effect_entries': effectEntries.map((v) => v.toJson()).toList(),
      'fling_effect': flingEffect,
      'fling_power': flingPower,
      'id': id,
      'name': name,
      if (sprites != null) 'sprites': sprites!.toJson(),
    };
  }
}

class Attributes {
  final String name;
  final String url;

  Attributes({this.name = "", this.url = ""});

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
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

class EffectEntries {
  final String effect;
  final Attributes? language;
  final String shortEffect;

  EffectEntries({
    this.effect = "",
    this.language,
    this.shortEffect = "",
  });

  factory EffectEntries.fromJson(Map<String, dynamic> json) {
    return EffectEntries(
      effect: json['effect'] ?? "",
      language: json['language'] != null
          ? Attributes.fromJson(json['language'])
          : null,
      shortEffect: json['short_effect'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'effect': effect,
      if (language != null) 'language': language!.toJson(),
      'short_effect': shortEffect,
    };
  }
}

class Sprites {
  final String url;

  Sprites({this.url = ""});

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      url: json['default'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'default': url,
    };
  }
}

class Item {
  final List<Attributes> attributes;
  final Attributes? category;
  final int cost;
  final List<EffectEntries> effectEntries;
  final String? flingEffect;
  final int flingPower;
  final int id;
  final String name;
  final Sprites? sprites;

  Item({
    this.attributes = const [],
    this.category,
    this.cost = 0,
    this.effectEntries = const [],
    this.flingEffect,
    this.flingPower = 0,
    this.id = 0,
    this.name = "",
    this.sprites,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((v) => Attributes.fromJson(v))
              .toList() ??
          [],
      category: json['category'] != null
          ? Attributes.fromJson(json['category'])
          : null,
      cost: json['cost'] ?? 0,
      effectEntries: (json['effect_entries'] as List<dynamic>?)
              ?.map((v) => EffectEntries.fromJson(v))
              .toList() ??
          [],
      flingEffect: json['fling_effect'],
      flingPower: json['fling_power'] ?? 0,
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      sprites:
          json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'attributes': attributes.map((v) => v.toJson()).toList(),
      if (category != null) 'category': category!.toJson(),
      'cost': cost,
      'effect_entries': effectEntries.map((v) => v.toJson()).toList(),
      'fling_effect': flingEffect,
      'fling_power': flingPower,
      'id': id,
      'name': name,
      if (sprites != null) 'sprites': sprites!.toJson(),
    };
  }
}
