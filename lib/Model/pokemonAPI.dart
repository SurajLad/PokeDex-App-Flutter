class PokemonAPI {
  final int? baseExperience;
  final int? height;
  final int? id;
  final List<Moves> moves;
  final String? name;
  final List<Stats> stats;
  final List<Types> types;
  final int? weight;

  PokemonAPI({
    this.baseExperience,
    this.height,
    this.id,
    this.moves = const [],
    this.name,
    this.stats = const [],
    this.types = const [],
    this.weight,
  });

  factory PokemonAPI.fromJson(Map<String, dynamic> json) {
    return PokemonAPI(
      baseExperience: json['base_experience'],
      height: json['height'],
      id: json['id'],
      moves: (json['moves'] as List<dynamic>?)
              ?.map((v) => Moves.fromJson(v))
              .toList() ??
          [],
      name: json['name'],
      stats: (json['stats'] as List<dynamic>?)
              ?.map((v) => Stats.fromJson(v))
              .toList() ??
          [],
      types: (json['types'] as List<dynamic>?)
              ?.map((v) => Types.fromJson(v))
              .toList() ??
          [],
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_experience': baseExperience,
      'height': height,
      'id': id,
      'moves': moves.map((v) => v.toJson()).toList(),
      'name': name,
      'stats': stats.map((v) => v.toJson()).toList(),
      'types': types.map((v) => v.toJson()).toList(),
      'weight': weight,
    };
  }
}

class Moves {
  final Move? move;
  final List<VersionGroupDetails> versionGroupDetails;

  Moves({
    this.move,
    this.versionGroupDetails = const [],
  });

  factory Moves.fromJson(Map<String, dynamic> json) {
    return Moves(
      move: json['move'] != null ? Move.fromJson(json['move']) : null,
      versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
              ?.map((v) => VersionGroupDetails.fromJson(v))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (move != null) 'move': move!.toJson(),
      'version_group_details':
          versionGroupDetails.map((v) => v.toJson()).toList(),
    };
  }
}

class Move {
  final String? name;

  Move({this.name});

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}

class VersionGroupDetails {
  final int? levelLearnedAt;
  final Move? moveLearnMethod;
  final Move? versionGroup;

  VersionGroupDetails({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetails(
      levelLearnedAt: json['level_learned_at'],
      moveLearnMethod: json['move_learn_method'] != null
          ? Move.fromJson(json['move_learn_method'])
          : null,
      versionGroup: json['version_group'] != null
          ? Move.fromJson(json['version_group'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'level_learned_at': levelLearnedAt,
      if (moveLearnMethod != null)
        'move_learn_method': moveLearnMethod!.toJson(),
      if (versionGroup != null) 'version_group': versionGroup!.toJson(),
    };
  }
}

class Stats {
  final int? baseStat;
  final Move? stat;

  Stats({this.baseStat, this.stat});

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      baseStat: json['base_stat'],
      stat: json['stat'] != null ? Move.fromJson(json['stat']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_stat': baseStat,
      if (stat != null) 'stat': stat!.toJson(),
    };
  }
}

class Types {
  final int? slot;
  final Type? type;

  Types({this.slot, this.type});

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
      slot: json['slot'],
      type: json['type'] != null ? Type.fromJson(json['type']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      if (type != null) 'type': type!.toJson(),
    };
  }
}

class Type {
  final String? name;

  Type({this.name});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
