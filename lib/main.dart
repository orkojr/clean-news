import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retro_news/data/repositories/news_repository_impl.dart';
import 'package:retro_news/data/services/dio_interceptor.dart';
import 'package:retro_news/data/services/news_service.dart';
import 'package:retro_news/domain/usecases/get_top_headline.dart';
import 'package:get/get.dart';
import 'package:retro_news/presentation/controllers/news_controller.dart';

import 'app/app.dart';

void main() {
  final dio = Dio();
  dio.interceptors.add(DioInterceptor()); // Ajouter l'intercepteur
  final newsService = NewsService(dio);
  final newsRepository = NewsRepositoryImpl(newsService);
  final getTopHeadlines = GetTopHeadlines(newsRepository);

  Get.put(NewsController(getTopHeadlines));

  runApp(const MyApp());
}
