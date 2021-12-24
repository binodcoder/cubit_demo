import 'package:bloc/bloc.dart';
part 'counter_state.dart';

class CounterCubitDartCubit extends Cubit<CounterState> {
  CounterCubitDartCubit() : super(CounterInitial());
  void increment() => emit(CounterState(counterValue: state.counterValue + 1));
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1));
  void refresh() => emit(CounterState(counterValue: state.counterValue = 0));
}
