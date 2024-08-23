import 'package:json_annotation/json_annotation.dart';
import 'package:retro_news/data/models/article_model.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
    final String? status;
    final int? totalResults;
    final List<ArticleModel> articles;

    NewsModel({
         this.status,
         this.totalResults,
        required this.articles,
    });

     factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsModelToJson(this);

   
}

