import 'package:dio/dio.dart';
import 'package:retro_news/data/models/news_model.dart';
import 'package:retrofit/retrofit.dart';

part 'news_service.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2/")
abstract class NewsService {
  factory NewsService(Dio dio, {String baseUrl}) = _NewsService;

  @GET("/top-headlines")
  Future<NewsModel> getTopHeadlines(@Query("country") String country, @Query("apiKey") String apiKey);
}
