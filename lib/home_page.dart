import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_demo/cubit/counter_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubitDartCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: Text(
            '${state.counterValue}',
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          )),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubitDartCubit>().increment();
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubitDartCubit>().decrement();
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubitDartCubit>().refresh();
                },
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}
