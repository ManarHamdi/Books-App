import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/BookModel.dart';
import 'book_rating_row.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.booksModel}) : super(key: key);
final BookModel booksModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetails,extra: booksModel);
      },
      child: SizedBox(
        height: 100,

        child: Row(
          children: [


            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: AspectRatio(
                  aspectRatio: 2/3,
                  child: CachedNetworkImage(
                    imageUrl: booksModel.volumeInfo?.imageLinks?.thumbnail??"",
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(width: 29,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                    height: 48,
                    width: 195,
                    child: Text(booksModel.volumeInfo?.title??" ",

                      style: Styles.textStyle20,maxLines: 2,overflow: TextOverflow.ellipsis,)),
                 Text(booksModel.volumeInfo?.authors?[0]??"",style: Styles.textStyle14,textAlign: TextAlign.start,),
                const SizedBox(height: 8,),

                Row(children: const [
                  Text("Free",style: Styles.textStyle15,),
                  SizedBox(width: 39,),
                  BookRatingRow()


                ],)
              ],)
          ],
        ),
      ),
    );
  }
}
