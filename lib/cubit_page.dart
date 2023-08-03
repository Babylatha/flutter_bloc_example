import 'package:cubit_increment/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counterCubit = CounterCubit();
    return Scaffold(
      appBar: AppBar(
        title: const Text('CUBIT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => counterCubit.increment(),
            tooltip: 'Increment',
            heroTag: null,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: () => counterCubit.decrement(),
            tooltip: 'Decrement',
            heroTag: null,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
