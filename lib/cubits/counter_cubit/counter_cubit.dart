import 'package:basketball_counter_app/cubits/counter_cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void addPoints(String team, int points) {
    if (team == 'A') {
      teamAPoints += points;
      emit(CounterAIncrement());
    } else if (team == 'B') {
      teamBPoints += points;
      emit(CounterBIncrement());
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
