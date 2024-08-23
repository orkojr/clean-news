import 'package:retro_news/data/services/news_service.dart';
import 'package:retro_news/domain/entities/article.dart';
import 'package:retro_news/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsService newsService;

  NewsRepositoryImpl(this.newsService);

  @override
  Future<List<ArticleEntity>> getTopHeadlines(String country) async {
    final news = await newsService.getTopHeadlines(country, '3e6ddbb62f3b4eccbe5a75e7ac104a91');
    return news.articles
        .map(
          (article) => ArticleEntity(
            title: article.title,
            author: article.author,
            url: article.url,
            urlToImage: article.urlToImage,
            description: article.description,
            publishedAt: article.publishedAt,
            content: article.content,
          ),
        )
        .toList();
  }
}
