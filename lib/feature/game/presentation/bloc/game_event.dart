// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'game_bloc.dart';

abstract class GameEvent {

}
class StartGameEvent extends GameEvent {
  final int attemptCount;
  final int wordLength;
  StartGameEvent({
    required this.attemptCount,
    required this.wordLength,
  });
   
}
class EnterAttemptEvent extends GameEvent{

}
class EnterKeyAttempt extends GameEvent{
  final String key;

  EnterKeyAttempt({required this.key});
}
class DeleteKeyAttempt extends GameEvent{}


// sealed class GameBlocEvent extends Equatable {
//   const GameBlocEvent();

//   @override
//   List<Object> get props => [];
// }
