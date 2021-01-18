import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:djubli_test/models/transaction.dart';
import '../../data/repository/transaction_repository.dart';
import 'package:equatable/equatable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionRepositoryInterface _transactionRepository;

  TransactionBloc(this._transactionRepository) : super(TransactionLoadInProgress()) {
    assert(_transactionRepository != null);
  }
  

  @override
  Stream<TransactionState> mapEventToState(
    TransactionEvent event,
  ) async* {
    if(event is FetchTransactionData) {
      yield* _fetchTransactionData();
    }
  }

  Stream<TransactionState> _fetchTransactionData() async* {
    yield TransactionLoadInProgress();

    try {
      List<Transaction> transactions = await _transactionRepository.fetchData();
      yield TransactionLoadSuccess(transactions: transactions);
    } on Exception {
      yield TransactionLoadFailure();
    }
  }
}
