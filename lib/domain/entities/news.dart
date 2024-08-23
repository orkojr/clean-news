

import 'package:retro_news/data/models/article_model.dart';

class NewsEntity {
    final String status;
    final int totalResults;
    final List<ArticleModel> articles;

    NewsEntity({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    
}

