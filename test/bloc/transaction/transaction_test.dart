import 'package:bloc_test/bloc_test.dart';
import 'package:djubli_test/bloc/transaction/transaction_bloc.dart';
import 'package:djubli_test/data/repository/transaction_repository.dart';
import 'package:djubli_test/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTransactionRepository extends Mock implements TransactionRepositoryInterface {}

void main() {
  TransactionBloc transactionBloc;
  MockTransactionRepository mockTransactionRepository;

  test('Given null repository while instantiating bloc, Then throws AssertionError', () {
    expect(
      () => TransactionBloc(mockTransactionRepository),
      throwsA(isAssertionError),
    );
  });

  group('Fetch transaction', () {
    setUp(() {
      mockTransactionRepository = MockTransactionRepository();
      transactionBloc = TransactionBloc(mockTransactionRepository);
    });

    test('Given bloc instantiated, Then the initial state is ExpensePlanInitial1', () {
      expect(transactionBloc.state, TransactionLoadInProgress());
    });

    TransactionBloc buildBlocWithSuccessFetchRepository(MockTransactionRepository mockTransactionRepository) {
      when(mockTransactionRepository.fetchData()).thenAnswer((_) => Future.value([
        Transaction(
          id: 1,
          brand: 'Toyota',
          name: 'Camry',
          year: 2017,
          type: 'Sedan',
          color: 'Hitam',
          km: 1000,
          location: 'Surabaya',
          price: 500000000,
          date: DateTime.parse('2015-01-31')
        ),
      ]));
      return TransactionBloc(mockTransactionRepository);
    }

    blocTest(
      'Given any state, When FetchTransactionData event added And fetch success, Then yield Load and TransactionLoadSuccess state',
      build: () => buildBlocWithSuccessFetchRepository(mockTransactionRepository),
      act: (bloc) => bloc..add(FetchTransactionData()),
      expect: [
        TransactionLoadInProgress(),
        TransactionLoadSuccess(
          transactions: [
            Transaction(
              id: 1,
              brand: 'Toyota',
              name: 'Camry',
              year: 2017,
              type: 'Sedan',
              color: 'Hitam',
              km: 1000,
              location: 'Surabaya',
              price: 500000000,
              date: DateTime.parse('2015-01-31')
            ),
          ]
        ),
      ]
    );


  });
}