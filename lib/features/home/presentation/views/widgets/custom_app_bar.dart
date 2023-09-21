import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 16),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20,width:80 ),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp,size: 24,))
        ],
      ),
    );
  }
}