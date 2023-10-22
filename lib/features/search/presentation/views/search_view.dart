import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_texr_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key, this.keyword}) : super(key: key);
final keyword;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
BlocProvider.of<SearchBooksCubit>(context).fetchResultMethod(keyword: widget.keyword);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
       body: SearchBody(),
    ));
  }
}

