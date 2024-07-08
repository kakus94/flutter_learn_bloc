import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/di.dart';
import 'package:flutter_learn_bloc/features/counter/cubit/counter/counter_cubit.dart';

import 'package:flutter_learn_bloc/features/posts/cubit/freezed_counter/freezed_data_cubit.dart';
import 'package:flutter_learn_bloc/features/posts/view/my_home_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

//?https://jsonplaceholder.typicode.com/posts

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (context) => getIt()),
        BlocProvider<FreezedDataCubit>(
            create: (context) => getIt()..fetchData())
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
