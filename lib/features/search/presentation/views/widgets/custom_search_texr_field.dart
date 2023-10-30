
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/search_cubit/search_cubit.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {

  @override
  Widget build(BuildContext context) {
    return TextField(

        decoration: const InputDecoration(
            hintText: "Search",
            suffixIcon: Opacity(opacity: .3, child: Icon(Icons.search_rounded)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,
                ))),
        enabled: true,
        // onSubmitted: (value) {
        //   setState(() {
        //      keyword = value;
        //   });
        // }
      onChanged: (value){
          setState(() {
            BlocProvider.of<SearchBooksCubit>(context).keyWord=value;
            BlocProvider.of<SearchBooksCubit>(context).fetchResultMethod(keyword: value);
          });
      },

        );
  }
}
