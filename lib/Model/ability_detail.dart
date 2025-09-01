class AbilityDetail {
  final List<EffectEntries> effectEntries;
  final int id;
  final bool isMainSeries;
  final String name;
  final List<Pokemon> pokemon;

  AbilityDetail({
    this.effectEntries = const [],
    this.id = 0,
    this.isMainSeries = false,
    this.name = "",
    this.pokemon = const [],
  });

  factory AbilityDetail.fromJson(Map<String, dynamic> json) {
    final effectEntries = <EffectEntries>[];
    final pokemon = <Pokemon>[];

    if (json['effect_entries'] != null) {
      for (var v in json['effect_entries']) {
        effectEntries.add(EffectEntries.fromJson(v));
      }
    }

    if (json['pokemon'] != null) {
      for (var v in json['pokemon']) {
        pokemon.add(Pokemon.fromJson(v));
      }
    }
    return AbilityDetail(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      isMainSeries: json['is_main_series'] ?? false,
      effectEntries: effectEntries,
      pokemon: pokemon,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'effect_entries': effectEntries.map((v) => v.toJson()).toList(),
      'id': id,
      'is_main_series': isMainSeries,
      'name': name,
      'pokemon': pokemon.map((v) => v.toJson()).toList(),
    };
  }
}

class EffectEntries {
  final String effect;
  final Language? language;
  final String shortEffect;

  EffectEntries({
    this.effect = "",
    this.language,
    this.shortEffect = "",
  });

  factory EffectEntries.fromJson(Map<String, dynamic> json) {
    return EffectEntries(
      effect: json['effect'] ?? "",
      language:
          json['language'] != null ? Language.fromJson(json['language']) : null,
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

class Language {
  final String name;
  final String url;

  Language({this.name = "", this.url = ""});

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
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

class Pokemon {
  final Language? pokemon;

  Pokemon({this.pokemon});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      pokemon:
          json['pokemon'] != null ? Language.fromJson(json['pokemon']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (pokemon != null) 'pokemon': pokemon!.toJson(),
    };
  }
}
