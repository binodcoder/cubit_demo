import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider<CounterCubitDartCubit>(
      create: (context) => CounterCubitDartCubit(),
      child: const MyApp(),
    ),
  ));
}
