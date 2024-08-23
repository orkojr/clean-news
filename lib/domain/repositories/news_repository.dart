import 'package:retro_news/domain/entities/article.dart';

abstract class NewsRepository {
  Future<List<ArticleEntity>> getTopHeadlines(String country);
}
