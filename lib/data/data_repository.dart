// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_learn_bloc/data/remote_data_source.dart';
import 'package:flutter_learn_bloc/model/post2_model/post2_model.dart';

class DataRepository {
  final RemoteDataSource _dataSource;
  DataRepository(this._dataSource);

  Future<Post2Model> fetchData({int id = 1}) async {
    try {
      final response = await _dataSource.fetchData(id: id);
      return Post2Model.fromJson(response);
    } catch (e) {
      throw Exception(e);
    }
  }
}
