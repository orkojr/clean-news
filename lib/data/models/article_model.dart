import 'package:json_annotation/json_annotation.dart';
part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
    final String? author;
    final String? title;
    final dynamic description;
    final String? url;
    final dynamic urlToImage;
    final String? publishedAt;
    final dynamic content;

    ArticleModel({
         this.author,
         this.title,
         this.description,
         this.url,
         this.urlToImage,
         this.publishedAt,
         this.content,
    });

    factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}