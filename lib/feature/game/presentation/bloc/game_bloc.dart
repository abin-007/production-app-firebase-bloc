import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:production_ready_app/feature/game/domain/game_repository.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository gameRepository;
  GameBloc({required this.gameRepository}) : super(GameState.initial()) {
    on<StartGameEvent>(onStartGameEvent);
    on<EnterAttemptEvent>(onEnterAttemptEvent);
    on<EnterKeyAttempt>(onEnterKeyAttempt);
    on<DeleteKeyAttempt>(onDeleteKeyAttempt);
  }

  Future onStartGameEvent(StartGameEvent event, Emitter<GameState> emit) async {
    emit(state.copyWith(status: GameStatus.loading));

    var result = await gameRepository.getRandomWord(event.wordLength);
    result.fold(
      (l) {
        emit(state.copyWith(status: GameStatus.error, errorMessage: l.message));
      },
      (r) {
        emit(
          state.copyWith(
            status: GameStatus.inProgress,
            word: r.toUpperCase(),
            attemptsCount: event.attemptCount,
          ),
        );
      },
    );
  }

  Future onEnterKeyAttempt(
    EnterKeyAttempt event,
    Emitter<GameState> emit,
  ) async {
    var currentAttempt = state.currentAttempt ?? '';
    var word = state.word ?? '';
    if (word.isEmpty) return '';
    if (currentAttempt.length >= word.length) return '';

    emit(
      state.copyWith(
        status: GameStatus.inProgress,
        currentAttempt: currentAttempt + event.key,
      ),
    );
  }

  Future onDeleteKeyAttempt(DeleteKeyAttempt event, Emitter<GameState> emit)async {
    var currentAttempt =  state.currentAttempt  ?? '';
    if(currentAttempt.isEmpty) return;
    emit(state.copyWith(
      status: GameStatus.inProgress,
      currentAttempt: currentAttempt.substring(0,currentAttempt.length -1)

    ));

  }
  Future onEnterAttemptEvent(
    EnterAttemptEvent event,
    Emitter<GameState> emit,
  ) async{
    var word = state.word ?? '';
    var currentAttempt =state.currentAttempt ?? '';
    var attempts = state.attempts ?? [];
    if( word.isEmpty || currentAttempt.length < word.length){
      return;
    }
    var checkWord = 


    
  }
}
