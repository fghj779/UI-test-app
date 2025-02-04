import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bookmark_provider.dart';
import '../widgets/news_tile.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookmarks = context.watch<BookmarkProvider>().bookmarks;

    return Scaffold(
      appBar: AppBar(title: Text('Bookmarks')),
      body: bookmarks.isEmpty
          ? Center(child: Text('No bookmarks yet.'))
          : ListView.builder(
              itemCount: bookmarks.length,
              itemBuilder: (context, index) {
                final article = bookmarks[index];
                return NewsTile(post: article);
              },
            ),
    );
  }
}
