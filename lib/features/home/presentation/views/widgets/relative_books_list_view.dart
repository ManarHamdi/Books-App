
import 'package:flutter/material.dart';

import 'books_list_view_item.dart';

class RelativeBooksListView extends StatelessWidget {
  const RelativeBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return       SizedBox(
      height: 124,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const BooksListViewItem(),
          separatorBuilder: ((context, index) => const SizedBox(width: 5,)),
          itemCount: 10),
    );

  }
}
