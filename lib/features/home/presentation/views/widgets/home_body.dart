import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          BooksListView(),
          SizedBox(height: 40,),

          Text("Best Seller",style: Styles.textStyle18),
          SizedBox(height: 10,),
          BestSelletListView()


        ],
      ),
    );
  }
}



