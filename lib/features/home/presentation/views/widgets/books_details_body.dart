import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/relative_books_list_view.dart';
import 'package:flutter/material.dart';
import 'book_rating_row.dart';
import 'books_list_view_item.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_button.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            const CustomBookDetailAppBar(),
            const SizedBox(height: 15,),
            SizedBox(
                height: MediaQuery.of(context).size.height*.35,
                child: const BooksListViewItem(
                  imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fblogs.icrc.org%2Falinsani%2F2020%2F08%2F23%2F3923%2F&psig=AOvVaw1zYPjWEuUvHJ2bLPeqcHi3&ust=1697493864225000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDu0ciH-YEDFQAAAAAdAAAAABAE",
                )),
            const SizedBox(height: 35,),
            const Text("The Jungle Book",style: Styles.textStyle30,),
            const SizedBox(height: 8,),
            Opacity(
                opacity: .5,
                child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),)),
            const SizedBox(height: 17,),
            const BookRatingRow(),
            const SizedBox(height: 37,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width*.4,
                  child: CustomButton(
                  backGround: Colors.white,buttonTitle: "19.99€",
                    textColor: Colors.black,borderStyle: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)))),),
                ),
                SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width*.4,
                  child: CustomButton(backGround: const Color(0xffEF8262),buttonTitle: "Free preview",
                    textColor: Colors.white,borderStyle: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)))),),
                ),
                const SizedBox(height: 50,),
              ],
            ),
            const SizedBox(height: 50,),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("You can also", style: Styles.textStyle14)),
            const SizedBox(height: 10,),
            const RelativeBooksListView()
            
          ],

        ),
      ),
    );
  }
}

