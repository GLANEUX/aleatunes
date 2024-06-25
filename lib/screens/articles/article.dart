// article.dart

// import 'package:flutter/material.dart';

class Article {
  final String title;
  final String excerpt;
  final List<ArticleSection> sections;
  final String imageUrl;

  Article({
    required this.title,
    required this.excerpt,
    required this.sections,
    required this.imageUrl,
  });
}

class ArticleSection {
  final String title;
  final String content;

  ArticleSection({
    required this.title,
    required this.content,
  });
}
