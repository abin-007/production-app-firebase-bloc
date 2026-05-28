part of 'game_bloc_bloc.dart';

sealed class GameBlocState extends Equatable {
  const GameBlocState();
  
  @override
  List<Object> get props => [];
}

final class GameBlocInitial extends GameBlocState {}
