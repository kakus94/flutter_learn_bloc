import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/features/posts/data/data_repository.dart';
import 'package:flutter_learn_bloc/features/posts/model/post2_model/post2_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_data_cubit.freezed.dart';
part 'freezed_data_state.dart';

class FreezedDataCubit extends Cubit<FreezedDataState> {
  FreezedDataCubit(this._dataRepository)
      : super(const FreezedDataState.initial());

  final DataRepository _dataRepository;

  Future<void> fetchData({int id = 1}) async {
    emit(const FreezedDataState.loading());

    try {
      final model = await _dataRepository.fetchData(id: id);
      emit(FreezedDataState.loaded(model));
    } catch (e) {
      emit(const FreezedDataState.error());
    }
  }
}
