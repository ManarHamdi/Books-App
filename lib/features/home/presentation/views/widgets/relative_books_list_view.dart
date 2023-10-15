
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
          itemBuilder: (context, index) =>  const BooksListViewItem(
            imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fblogs.icrc.org%2Falinsani%2F2020%2F08%2F23%2F3923%2F&psig=AOvVaw1zYPjWEuUvHJ2bLPeqcHi3&ust=1697493864225000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDu0ciH-YEDFQAAAAAdAAAAABAE",
          ),
          separatorBuilder: ((context, index) => const SizedBox(width: 5,)),
          itemCount: 10),
    );

  }
}
