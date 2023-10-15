import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/home/data/models/BooksModel.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiServices{
 String  _baseUrl="https://www.googleapis.com/books/v1/";
 final Dio _dio;

  ApiServices(this._dio);

  Future<Map <String,dynamic>> get ({required String endPoint}) async {
    var response= await _dio.get("$_baseUrl$endPoint");
    return response.data;


 }

}