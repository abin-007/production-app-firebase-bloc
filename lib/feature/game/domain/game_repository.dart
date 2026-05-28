import 'package:production_ready_app/core/failure/failure.dart';
import 'package:production_ready_app/core/model/either.dart';

abstract class GameRepository {
  Future<Either<Failure, String>> getRandomWord(int length);

  Future<Either<Failure, void>> checkWord(String word);
}
