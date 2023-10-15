
import 'package:flutter/material.dart';


class BooksListViewItem extends StatelessWidget {
  final String imageUrl;
  const BooksListViewItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: SizedBox(height:210 ,
        
        child:
        AspectRatio(
            aspectRatio: 2/3,
            child: Image.network(imageUrl,
              fit: BoxFit.fill,)),
      ),
    );
  }
}
