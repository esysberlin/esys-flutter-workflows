import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterStateChanged(value: 0));

  void increment() {
    if (state is CounterStateChanged) {
      var counterState = state as CounterStateChanged;
      emit(CounterStateChanged(value: counterState.value + 1));
    }
  }

  @override
  Future<void> close() async {
    await super.close();
  }
}
