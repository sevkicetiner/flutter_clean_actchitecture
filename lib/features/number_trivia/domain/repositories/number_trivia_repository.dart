
import 'package:dartz/dartz.dart';
import 'package:clean_architec_project/core/failures.dart' show Failure;
import 'package:clean_architec_project/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreateNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}