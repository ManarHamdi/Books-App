import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/relative_books_list_view.dart';
import 'package:flutter/material.dart';
import 'book_rating_row.dart';
import 'books_list_view_item.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_button.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
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
                child:  BooksListViewItem(
                  imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail??"https://miro.medium.com/v2/resize:fit:5120/1*42ebJizcUtZBNIZPmmMZ5Q.jpeg",
                )),
            const SizedBox(height: 35,),
             Text(bookModel.volumeInfo!.title??"",style: Styles.textStyle30,textAlign: TextAlign.center,),
            const SizedBox(height: 8,),
            Opacity(
                opacity: .5,
                child: Text(bookModel.volumeInfo!.authors?[0]??"",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),)),
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
                  backGround: Colors.white,buttonTitle: "Free",
                    textColor: Colors.black,borderStyle: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)))),),
                ),
                SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width*.4,
                  child: CustomButton(backGround: const Color(0xffEF8262),buttonTitle: "Preview",
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
             RelativeBooksListView(bookModel: bookModel,)
            
          ],

        ),
      ),
    );
  }
}

