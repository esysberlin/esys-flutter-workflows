import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:workflows/presentation/logic/counter/counter_cubit.dart';

void main() {
  group('CounterBloc', () {
    blocTest<CounterCubit, CounterState>(
      'emits [] when nothing is added',
      build: () => CounterCubit(),
      expect: () => [],
    );

    blocTest<CounterCubit, CounterState>(
      'emits [CounterStateChanged(1)] when increment is called',
      build: () => CounterCubit(),
      act: (bloc) => bloc.increment(),
      expect: () => [const CounterStateChanged(value: 1)],
    );

    blocTest<CounterCubit, CounterState>(
      'CounterBloc emits [CounterStateChanged(2)] when increment is called twice',
      build: () => CounterCubit(),
      act: (bloc) => bloc
        ..increment()
        ..increment(),
      skip: 1,
      expect: () => [const CounterStateChanged(value: 2)],
    );
  });
}
