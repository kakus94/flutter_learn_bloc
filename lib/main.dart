import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/Cubit/counter_cubit.dart';
import 'package:flutter_learn_bloc/Cubit/counter_event.dart';
import 'package:flutter_learn_bloc/Cubit/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text(
            //   "${context.watch<CounterCubit>().state}",
            //   style: Theme.of(context).textTheme.headlineMedium,
            // )
            //! Lub tak
            BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
              return Text(
                '${state.counterValue}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
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
            onPressed: () =>
                BlocProvider.of<CounterCubit>(context).add(CounterIncreement()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
