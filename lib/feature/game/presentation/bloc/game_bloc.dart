import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'game_bloc_event.dart';
part 'game_bloc_state.dart';

class GameBlocBloc extends Bloc<GameBlocEvent, GameBlocState> {
  GameBlocBloc() : super(GameBlocInitial()) {
    on<GameBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
