import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:production_ready_app/feature/game/data/datasource/game_remote_datasource.dart';
import 'package:production_ready_app/feature/game/data/repository/game_repository_impl.dart';
import 'package:production_ready_app/feature/game/domain/game_repository.dart';
import 'package:production_ready_app/feature/game/presentation/bloc/game_bloc.dart';
var getIt = GetIt.instance;

void setup(){
  registerDatasources();
  registerBloc();
  registerRepositories();

}

void registerBloc() {
  getIt.registerFactory<GameBloc>(()=>GameBloc(gameRepository: getIt()));
}

void registerRepositories() {
  getIt.registerSingleton<GameRepository>(GameRepositoryImpl(gameRemoteDatasource: getIt()));
}

void registerDatasources(){
  getIt.registerSingleton(GameRemoteDatasource(dio: Dio()));
}

