
import 'package:clean_architec_project/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architec_project/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architec_project/features/number_trivia/domain/usecases/get_concreate_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {

}
@GenerateMocks([NumberTriviaRepository])
void main()  {
  late GetConcreateNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

   setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreateNumberTrivia(mockNumberTriviaRepository);
  });
  int tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "test", number: tNumber);
  test('should get trivia for the number from the repository', () async {
    // arrange
    when(mockNumberTriviaRepository.getConcreateNumberTrivia(tNumber))
        .thenAnswer((_) async => Right(tNumberTrivia));
    //act
    final resul = await usecase.execute(number: tNumber);
    // assert
    expect(resul, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreateNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);  //git remote set-url origin git@github.com-worker_user1:worker_user1/repo_name.git
  });
}