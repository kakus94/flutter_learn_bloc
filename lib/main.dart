import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_cubit.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_event.dart';
import 'package:flutter_learn_bloc/Cubit/counter/counter_state.dart';

import 'package:flutter_learn_bloc/Cubit/freezed_counter/freezed_data_cubit.dart';

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
            create: (context) => FreezedDataCubit()..fetchData())
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state.counterValue == 5) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Counter is 5")));
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<FreezedDataCubit, FreezedDataState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const CircularProgressIndicator(),
                    loading: () => const CircularProgressIndicator(),
                    loaded: (value) => Text(value.toString()),
                    error: () => const Text("Error"),
                  );
                },
              ),

              const Text(
                'You have pushed the button this many times:',
              ),
              // Text(
              //   "${context.watch<CounterCubit>().state}",
              //   style: Theme.of(context).textTheme.headlineMedium,
              // )
              //! Lub tak
              BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                return Text(
                  '${state.counterValue}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            // onPressed: () => context.read<CounterCubit>().increment(),
            onPressed: () =>
                BlocProvider.of<CounterCubit>(context).add(CounterDecrement()),
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            // onPressed: () => context.read<CounterCubit>().increment(),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).add(CounterIncreement());
              final id =
                  BlocProvider.of<CounterCubit>(context).state.counterValue;
              BlocProvider.of<FreezedDataCubit>(context).fetchData(id: id + 1);
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
