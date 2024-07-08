import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/Cubit/data/data_state.dart';
import 'package:flutter_learn_bloc/config.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());

  void fetchData({int id = 1}) async {
    emit(DataLoading());
    try {
      final response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts/$id');
      emit(DataLoaded(response.data));
    } catch (e) {
      // ignore: avoid_print
      if (kDebugMode) print(e.toString());
    }
  }
}
