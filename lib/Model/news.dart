class News {
  final String status;
  final int totalResults;
  final List<Article> articles;

  News({
    this.status = "",
    this.totalResults = 0,
    this.articles = const [],
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      status: json['status'] ?? "",
      totalResults: json['totalResults'] ?? 0,
      articles: (json['articles'] as List<dynamic>?)
              ?.map((v) => Article.fromJson(v))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((v) => v.toJson()).toList(),
    };
  }
}

class Article {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: json['source'] != null ? Source.fromJson(json['source']) : null,
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source?.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }
}

class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
