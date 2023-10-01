import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: Opacity(opacity: .3,child: Icon(Icons.search_rounded)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,
          ))),
      enabled: true,

    );
  }
}
