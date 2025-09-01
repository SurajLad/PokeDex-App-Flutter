// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

List<Pokemon> pokemonFromJson(String str) =>
    List<Pokemon>.from(json.decode(str).map((x) => Pokemon.fromJson(x)));

String pokemonToJson(List<Pokemon> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pokemon {
  Pokemon({
    required this.dex,
    required this.name,
    this.animationTime,
    required this.height,
    required this.weight,
    required this.maxCp,
    this.buddySize,
    required this.types,
    this.encounter,
    this.evolution,
    required this.id,
    this.rarity,
  });

  int dex;
  String name;
  List<double>? animationTime;
  double height;
  double weight;
  int maxCp;
  BuddySize? buddySize;
  List<BuddySize> types;
  Encounter? encounter;
  Evolution? evolution;
  String id;
  BuddySize? rarity;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        dex: json["dex"],
        name: json["name"],
        animationTime: json["animationTime"] == null
            ? null
            : List<double>.from(json["animationTime"].map((x) => x.toDouble())),
        height: (json["height"] ?? 0).toDouble(),
        weight: (json["weight"] ?? 0).toDouble(),
        maxCp: json["maxCP"] ?? 0,
        buddySize: json["buddySize"] == null
            ? null
            : BuddySize.fromJson(json["buddySize"]),
        types: List<BuddySize>.from(
            json["types"].map((x) => BuddySize.fromJson(x))),
        encounter: json["encounter"] == null
            ? null
            : Encounter.fromJson(json["encounter"]),
        evolution: json["evolution"] == null
            ? null
            : Evolution.fromJson(json["evolution"]),
        id: json["id"],
        rarity:
            json["rarity"] == null ? null : BuddySize.fromJson(json["rarity"]),
      );

  Map<String, dynamic> toJson() => {
        "dex": dex,
        "name": name,
        "animationTime": animationTime == null
            ? null
            : List<dynamic>.from(animationTime!.map((x) => x)),
        "height": height,
        "weight": weight,
        "maxCP": maxCp,
        "buddySize": buddySize?.toJson(),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "encounter": encounter?.toJson(),
        "evolution": evolution?.toJson(),
        "id": id,
        "rarity": rarity?.toJson(),
      };
}

class BuddySize {
  BuddySize({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory BuddySize.fromJson(Map<String, dynamic> json) => BuddySize(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Encounter {
  Encounter({
    this.gender,
  });

  Gender? gender;

  factory Encounter.fromJson(Map<String, dynamic> json) => Encounter(
        gender: json["gender"] == null ? null : Gender.fromJson(json["gender"]),
      );

  Map<String, dynamic> toJson() => {
        "gender": gender?.toJson(),
      };
}

class Gender {
  Gender({
    required this.malePercent,
    required this.femalePercent,
  });

  double malePercent;
  double femalePercent;

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        malePercent: (json["malePercent"] ?? 0).toDouble(),
        femalePercent: (json["femalePercent"] ?? 0).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "malePercent": malePercent,
        "femalePercent": femalePercent,
      };
}

class Evolution {
  Evolution({
    this.futureBranches,
    this.pastBranch,
  });

  List<FutureBranch>? futureBranches;
  Branch? pastBranch;

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        futureBranches: json["futureBranches"] == null
            ? null
            : List<FutureBranch>.from(
                json["futureBranches"].map((x) => FutureBranch.fromJson(x))),
        pastBranch: json["pastBranch"] == null
            ? null
            : Branch.fromJson(json["pastBranch"]),
      );

  Map<String, dynamic> toJson() => {
        "futureBranches": futureBranches == null
            ? null
            : List<dynamic>.from(futureBranches!.map((x) => x.toJson())),
        "pastBranch": pastBranch?.toJson(),
      };
}

class FutureBranch {
  FutureBranch({
    required this.name,
    required this.id,
    this.futureBranches,
  });

  String name;
  String id;
  List<Branch>? futureBranches;

  factory FutureBranch.fromJson(Map<String, dynamic> json) => FutureBranch(
        name: json["name"],
        id: json["id"],
        futureBranches: json["futureBranches"] == null
            ? null
            : List<Branch>.from(
                json["futureBranches"].map((x) => Branch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "futureBranches": futureBranches == null
            ? null
            : List<dynamic>.from(futureBranches!.map((x) => x.toJson())),
      };
}

class Branch {
  Branch({
    required this.name,
    required this.id,
    this.costToEvolve,
    this.pastBranch,
  });

  String name;
  String id;
  PastBranchCostToEvolve? costToEvolve;
  BuddySize? pastBranch;

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        name: json["name"],
        id: json["id"],
        costToEvolve: json["costToEvolve"] == null
            ? null
            : PastBranchCostToEvolve.fromJson(json["costToEvolve"]),
        pastBranch: json["pastBranch"] == null
            ? null
            : BuddySize.fromJson(json["pastBranch"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "costToEvolve": costToEvolve?.toJson(),
        "pastBranch": pastBranch?.toJson(),
      };
}

class PastBranchCostToEvolve {
  PastBranchCostToEvolve({
    required this.candyCost,
    this.evolutionItem,
  });

  int candyCost;
  BuddySize? evolutionItem;

  factory PastBranchCostToEvolve.fromJson(Map<String, dynamic> json) =>
      PastBranchCostToEvolve(
        candyCost: json["candyCost"] ?? 0,
        evolutionItem: json["evolutionItem"] == null
            ? null
            : BuddySize.fromJson(json["evolutionItem"]),
      );

  Map<String, dynamic> toJson() => {
        "candyCost": candyCost,
        "evolutionItem": evolutionItem?.toJson(),
      };
}
