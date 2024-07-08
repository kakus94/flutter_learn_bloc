import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/model/post2_model/post2_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_data_cubit.freezed.dart';
part 'freezed_data_state.dart';

class FreezedDataCubit extends Cubit<FreezedDataState> {
  FreezedDataCubit() : super(const FreezedDataState.initial());

  Future<void> fetchData({int id = 1}) async {
    emit(const FreezedDataState.loading());

    try {
      final response =
          await Dio().get("https://jsonplaceholder.typicode.com/posts/$id");
      final model = Post2Model.fromJson(response.data);
      emit(FreezedDataState.loaded(model));
    } catch (e) {
      emit(const FreezedDataState.error());
    }
  }
}
