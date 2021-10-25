part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object?> get props => [];
}

class CounterStateChanged extends CounterState {
  final int value;

  const CounterStateChanged({required this.value});

  CounterStateChanged copyWith({
    int? value,
  }) {
    return CounterStateChanged(
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [value];
}
