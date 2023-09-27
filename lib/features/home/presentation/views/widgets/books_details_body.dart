import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'book_rating_row.dart';
import 'books_list_view_item.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:  [
          const CustomBookDetailAppBar(),
          const SizedBox(height: 15,),
          SizedBox(
              height: MediaQuery.of(context).size.height*.35,
              child: const BooksListViewItem()),
          const SizedBox(height: 45,),
          const Text("The Jungle Book",style: Styles.textStyle30,),
          const SizedBox(height: 8,),
          Opacity(
              opacity: .5,
              child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),)),
          const SizedBox(height: 17,),
          const BookRatingRow()



        ],

      ),
    );
  }
}
