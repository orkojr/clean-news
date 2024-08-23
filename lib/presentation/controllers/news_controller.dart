import 'package:get/get.dart';
import 'package:retro_news/domain/entities/article.dart';
import 'package:retro_news/domain/usecases/get_top_headline.dart';

class NewsController extends GetxController {
  final GetTopHeadlines getTopHeadlines;

  NewsController(this.getTopHeadlines);

  var articles = <ArticleEntity>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchTopHeadlines();
    super.onInit();
  }

  void fetchTopHeadlines() async {
    isLoading(true);
    try {
      articles.value = await getTopHeadlines('fr');
    } finally {
      isLoading(false);
    }
  }
}
