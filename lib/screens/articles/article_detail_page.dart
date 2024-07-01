// article_detail_page.dart

import 'package:flutter/material.dart';
import 'article.dart';
import '../../app_styles.dart';

class ArticleDetailPage extends StatelessWidget {
  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: Expanded(
            child: Text(
              article.title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black, 
           fontFamily: 'Kanit',
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,            ),
          ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(article.imageUrl),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: article.sections.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.sections[index].title,
                      style: AppStyles.headline1.copyWith(color: AppStyles.secondaryColor),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      article.sections[index].content,
                      style: AppStyles.bodyText2.copyWith(color: Colors.black87, height: 1.5),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}