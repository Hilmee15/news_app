class Article {
  Article({
    required this.author,
    required this.title,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  String author;
  String title;
  String urlToImage;
  String publishedAt;
  String content;

  factory Article.fromJSON(Map<String, dynamic> json) {
    return Article(
      // ignore: unnecessary_null_in_if_null_operators
      author: json['author'] ?? 'Anonymous',
      title: json['title'] ?? 'Anonym',
      urlToImage: json['urlToImage'] ?? 'https://www.btklsby.go.id/images/placeholder/basic.png',
      publishedAt: json['publishedAt'] ?? 'null',
      content: json['content'] ?? 'null',
    );
  }
}
