
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:210 ,
      child:
      AspectRatio(
          aspectRatio: 2/3,
          child: Image.asset(AssetsData.testImage)),
    );
  }
}
