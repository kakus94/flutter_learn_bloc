import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_cubit.dart';

import 'package:flutter_learn_bloc/Cubit/freezed_counter/freezed_data_cubit.dart';
import 'package:flutter_learn_bloc/data/data_repository.dart';
import 'package:flutter_learn_bloc/data/remote_data_source.dart';
import 'package:flutter_learn_bloc/view/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

//?https://jsonplaceholder.typicode.com/posts

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
        BlocProvider<FreezedDataCubit>(
            create: (context) =>
                FreezedDataCubit(DataRepository(RemoteDataSource()))
                  ..fetchData())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
