import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteDataSource {
  Future<dynamic> fetchData({int id = 1}) async {
    try {
      final response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts/$id");
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
