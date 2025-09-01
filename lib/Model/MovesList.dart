class MovesList {
  final int count;
  final String? next;
  final String? previous;
  final List<Result> results;

  MovesList({
    this.count = 0,
    this.next,
    this.previous,
    this.results = const [],
  });

  factory MovesList.fromJson(Map<String, dynamic> json) {
    return MovesList(
      count: json['count'] ?? 0,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
              ?.map((v) => Result.fromJson(v))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((v) => v.toJson()).toList(),
    };
  }
}

class Result {
  final String name;
  final String url;

  Result({this.name = "", this.url = ""});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
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
