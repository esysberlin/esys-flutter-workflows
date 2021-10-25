import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/counter/counter_cubit.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter'),
            ),
            body: Builder(builder: (BuildContext context) {
              if (state is CounterStateChanged) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '${state.value}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                );
              }

              return Container();
            }),
            floatingActionButton: FloatingActionButton(
              onPressed: BlocProvider.of<CounterCubit>(context).increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
