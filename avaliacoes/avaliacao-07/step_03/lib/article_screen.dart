import 'package:flutter/material.dart';
import 'news_data.dart';

class ArticleScreen extends StatelessWidget {
  final NewsArticle article;

  const ArticleScreen({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          article.description ?? '',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}