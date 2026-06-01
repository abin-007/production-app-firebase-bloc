part of 'game_bloc.dart';

enum GameStatus { initial, loading, inProgress, win, loss, error }

class GameState {
  final GameStatus status;
  String? errorMessage;
  final List<String>? attempts;
  final String? currentAttempt;
  final String? word;
  final int? attemptsCount;

  GameState._({
    required this.status,
    this.errorMessage,
    this.attempts,
    this.currentAttempt,
    this.word,
    this.attemptsCount,
  });

  factory GameState.initial() => GameState._(status: GameStatus.initial);

  GameState copyWith({
    GameStatus? status,
    String? errorMessage,
    List<String>? attempts,
    String? currentAttempt,
    String? word,
    int? attemptsCount,
  }) => GameState._(
    status: status ?? this.status,
    attempts: attempts ?? this.attempts,
    attemptsCount: attemptsCount ?? this.attemptsCount,
    currentAttempt: currentAttempt ?? this.currentAttempt,
    errorMessage: errorMessage ?? this.errorMessage,
    word: word ?? this.word,
  );
}
