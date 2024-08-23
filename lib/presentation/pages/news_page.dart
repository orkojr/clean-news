import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retro_news/presentation/controllers/news_controller.dart';
import 'package:retro_news/presentation/widgets/news_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.articles.length,
          itemBuilder: (context, index) {
            final article = controller.articles[index];
            return NewWidget(article: article);
          },
        );
      }),
    );
  }
}
