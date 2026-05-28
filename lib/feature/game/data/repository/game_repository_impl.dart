
import 'package:dio/dio.dart';
import 'package:production_ready_app/core/failure/failure.dart';
import 'package:production_ready_app/core/model/either.dart';
import 'package:production_ready_app/feature/game/data/datasource/game_remote_datasource.dart';
import 'package:production_ready_app/feature/game/domain/game_repository.dart';

class GameRepositoryImpl extends GameRepository {
  final GameRepository gameRepository;

  GameRepositoryImpl({
    required this.gameRepository,
  });
@override
  Future<Either<Failure, void>> checkWord(String word)async {
   
    try{
      var result = await  gameRepository.checkWord(word);
      return Right(null);

    }on DioException{
      return Left(GameFailure(message: "Enter the correct word"));

    }
    
    catch(e){
      return Left(GameFailure(message:"$e" ));

    }
  }
@override
  Future<Either<Failure, String>> getRandomWord(int length) async{
    
  try{
    var result =await gameRepository.getRandomWord(length);
    try{
       await gameRepository.checkWord(result);

    }catch(e){
      return getRandomWord(length);

    }
    return Right(result);
  }catch(e){
    return Left(GameFailure( message: "Error"));
  }
  }

}
