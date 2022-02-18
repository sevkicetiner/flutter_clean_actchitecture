

import 'package:clean_architec_project/core/failures.dart';
import 'package:clean_architec_project/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architec_project/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreateNumberTrivia {
  final NumberTriviaRepository repository;
  GetConcreateNumberTrivia(this.repository);
  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await repository.getConcreateNumberTrivia(number);
  }
}