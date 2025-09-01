class MoveDetail {
  final int? accuracy;
  final ContestType? contestType;
  final ContestType? damageClass;
  final int id;
  final List<LearnedByPokemon> learnedByPokemon;
  final Meta? meta;
  final String name;
  final int? power;
  final int? pp;
  final int? priority;
  final ContestType? type;

  MoveDetail({
    this.accuracy,
    this.contestType,
    this.damageClass,
    this.id = 0,
    this.learnedByPokemon = const [],
    this.meta,
    this.name = "",
    this.power,
    this.pp,
    this.priority,
    this.type,
  });

  factory MoveDetail.fromJson(Map<String, dynamic> json) {
    return MoveDetail(
      accuracy: json['accuracy'],
      contestType: json['contest_type'] != null
          ? ContestType.fromJson(json['contest_type'])
          : null,
      damageClass: json['damage_class'] != null
          ? ContestType.fromJson(json['damage_class'])
          : null,
      id: json['id'] ?? 0,
      learnedByPokemon: (json['learned_by_pokemon'] as List<dynamic>?)
              ?.map((v) => LearnedByPokemon.fromJson(v))
              .toList() ??
          [],
      meta: json['meta'] != null ? Meta.fromJson(json['meta']) : null,
      name: json['name'] ?? "",
      power: json['power'],
      pp: json['pp'],
      priority: json['priority'],
      type: json['type'] != null ? ContestType.fromJson(json['type']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accuracy': accuracy,
      if (contestType != null) 'contest_type': contestType!.toJson(),
      if (damageClass != null) 'damage_class': damageClass!.toJson(),
      'id': id,
      'learned_by_pokemon': learnedByPokemon.map((v) => v.toJson()).toList(),
      if (meta != null) 'meta': meta!.toJson(),
      'name': name,
      'power': power,
      'pp': pp,
      'priority': priority,
      if (type != null) 'type': type!.toJson(),
    };
  }
}

class ContestType {
  final String name;

  ContestType({this.name = ""});

  factory ContestType.fromJson(Map<String, dynamic> json) {
    return ContestType(
      name: json['name'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}

class LearnedByPokemon {
  final String name;
  final String url;

  LearnedByPokemon({this.name = "", this.url = ""});

  factory LearnedByPokemon.fromJson(Map<String, dynamic> json) {
    return LearnedByPokemon(
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

class Meta {
  final int? ailmentChance;
  final int? critRate;
  final int? drain;
  final int? flinchChance;
  final int? healing;
  final int? statChance;

  Meta({
    this.ailmentChance,
    this.critRate,
    this.drain,
    this.flinchChance,
    this.healing,
    this.statChance,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      ailmentChance: json['ailment_chance'],
      critRate: json['crit_rate'],
      drain: json['drain'],
      flinchChance: json['flinch_chance'],
      healing: json['healing'],
      statChance: json['stat_chance'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ailment_chance': ailmentChance,
      'crit_rate': critRate,
      'drain': drain,
      'flinch_chance': flinchChance,
      'healing': healing,
      'stat_chance': statChance,
    };
  }
}
