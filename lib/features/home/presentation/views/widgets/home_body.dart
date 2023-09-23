import 'package:flutter/material.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        BooksListView()

      ],
    );
  }
}



