// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/counter/cubit/counter/counter_cubit.dart' as _i3;
import 'features/posts/cubit/freezed_counter/freezed_data_cubit.dart' as _i6;
import 'features/posts/data/data_repository.dart' as _i5;
import 'features/posts/data/remote_data_source.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.CounterCubit>(() => _i3.CounterCubit());
    gh.singleton<_i4.RemoteDataSource>(() => _i4.RemoteDataSource());
    gh.singleton<_i5.DataRepository>(
        () => _i5.DataRepository(gh<_i4.RemoteDataSource>()));
    gh.factory<_i6.FreezedDataCubit>(
        () => _i6.FreezedDataCubit(gh<_i5.DataRepository>()));
    return this;
  }
}
