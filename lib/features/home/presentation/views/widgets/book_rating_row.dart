import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class BookRatingRow extends StatelessWidget {
  const BookRatingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Styles.starIcon,
          SizedBox(width: 5,),
          Text("4.8",style: Styles.textStyle16,),
          SizedBox(width: 6,),
          Opacity(
              opacity: .5,
              child: Text("(2390)",style: Styles.textStyle14,))
        ],
      )
    ;
  }
}
