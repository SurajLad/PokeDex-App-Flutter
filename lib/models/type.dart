class TypeDetail {
  final DamageRelations? damageRelations;
  final int? id;
  final DamageType? moveDamageClass;
  final String? name;

  TypeDetail({
    this.damageRelations,
    this.id,
    this.moveDamageClass,
    this.name,
  });

  factory TypeDetail.fromJson(Map<String, dynamic> json) {
    return TypeDetail(
      damageRelations: json['damage_relations'] == null
          ? null
          : DamageRelations.fromJson(json['damage_relations']),
      id: json['id'] as int?,
      moveDamageClass: json['move_damage_class'] == null
          ? null
          : DamageType.fromJson(json['move_damage_class']),
      name: json['name'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'damage_relations': damageRelations?.toJson(),
      'id': id,
      'move_damage_class': moveDamageClass?.toJson(),
      'name': name,
    };
  }
}

class DamageRelations {
  final List<DamageType>? doubleDamageFrom;
  final List<DamageType>? doubleDamageTo;
  final List<DamageType>? halfDamageFrom;
  final List<DamageType>? halfDamageTo;
  final List<DamageType>? noDamageFrom;
  final List<DamageType>? noDamageTo;

  DamageRelations({
    this.doubleDamageFrom,
    this.doubleDamageTo,
    this.halfDamageFrom,
    this.halfDamageTo,
    this.noDamageFrom,
    this.noDamageTo,
  });

  factory DamageRelations.fromJson(Map<String, dynamic> json) {
    return DamageRelations(
      doubleDamageFrom: (json['double_damage_from'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
      doubleDamageTo: (json['double_damage_to'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
      halfDamageFrom: (json['half_damage_from'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
      halfDamageTo: (json['half_damage_to'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
      noDamageFrom: (json['no_damage_from'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
      noDamageTo: (json['no_damage_to'] as List<dynamic>?)
          ?.map((v) => DamageType.fromJson(v))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'double_damage_from': doubleDamageFrom?.map((v) => v.toJson()).toList(),
      'double_damage_to': doubleDamageTo?.map((v) => v.toJson()).toList(),
      'half_damage_from': halfDamageFrom?.map((v) => v.toJson()).toList(),
      'half_damage_to': halfDamageTo?.map((v) => v.toJson()).toList(),
      'no_damage_from': noDamageFrom?.map((v) => v.toJson()).toList(),
      'no_damage_to': noDamageTo?.map((v) => v.toJson()).toList(),
    };
  }
}

class DamageType {
  final String? name;
  final String? url;

  DamageType({this.name, this.url});

  factory DamageType.fromJson(Map<String, dynamic> json) {
    return DamageType(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
