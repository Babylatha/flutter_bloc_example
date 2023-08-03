import 'package:cubit_increment/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = CounterBloc();
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLOC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
                bloc: counterBloc,
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: Theme.of(context).textTheme.bodyMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(IncrementEvent()),
            tooltip: 'Increment',
            heroTag: UniqueKey(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: () => counterBloc.add(DecrementEvent()),
            tooltip: 'Decrement',
            heroTag: UniqueKey(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
