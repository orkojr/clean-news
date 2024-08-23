import 'package:flutter/material.dart';
import 'package:retro_news/domain/entities/article.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.article,
  });

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 7.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (article.urlToImage != null)
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(article.urlToImage ?? ""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ListTile(
              title: Text(article.title ?? ""),
              subtitle: Text(article.description ?? ""),
            ),
          ],
        ));
  }
}
