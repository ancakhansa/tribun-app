class NewsArticles {
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  final Source? source;

factory NewsArticles.fromJson(Map<String, dynamic> json) {
    return NewsArticles(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
    );
  }

  NewsArticles({required this.title, required this.description, required this.url, required this.urlToImage, required this.publishedAt, required this.content, required this.source});



  
}

class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});

// berfungsi untuk merapikan format data yang di dapatkan dari server
// yang awalnya berawal bertipe data .json menjadi data yang dimengerti oleh bahasa pemrograman yang digunakan
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