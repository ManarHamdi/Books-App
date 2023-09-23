import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 114,
          child: AspectRatio(
              aspectRatio: 2/3,
              child: Image.asset(AssetsData.testImage,fit: BoxFit.fill,)),
        ),
        const SizedBox(width: 29,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                height: 48,
                width: 195,
                child: Text("Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,maxLines: 2,overflow: TextOverflow.ellipsis,)),
            const Text("J.K. Rowling",style: Styles.textStyle14,textAlign: TextAlign.start,),
            const SizedBox(height: 8,),
            Row(
              children: const [
                Text("19.99 €",style: Styles.textStyle15,),
                SizedBox(width: 39,),
                Styles.starIcon,
                Text("4.8",style: Styles.textStyle16,),
                SizedBox(width: 6,),
                Text("(2390)",style: Styles.textStyle14,)
              ],
            )
          ],)
      ],
    );
  }
}
