
import 'package:retro_news/domain/entities/article.dart';
import 'package:retro_news/domain/repositories/news_repository.dart';

class GetTopHeadlines {
  final NewsRepository repository;

  GetTopHeadlines(this.repository);

  Future<List<ArticleEntity>> call(String country) {
    return repository.getTopHeadlines(country);
  }
}
