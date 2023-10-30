import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';



class BooksListViewItem extends StatelessWidget {
  final String imageUrl;
  const BooksListViewItem({Key? key, required this.imageUrl,  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: AspectRatio(
          aspectRatio: 2/3,
      child:CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: imageUrl,

      )
      ),
    );
  }
}
