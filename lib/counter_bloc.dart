import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc_state.dart';
part 'bloc_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(state + 1);
      } else if (event is DecrementEvent) {
        emit(state - 1);
      }
    });
  }
}
