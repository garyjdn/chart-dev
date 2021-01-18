import 'package:dio/dio.dart';

import '../../models/transaction.dart';
import '../data_provider/rest/transaction_rest.dart';

abstract class TransactionRepositoryInterface {
  Future<List<Transaction>> fetchData();
}

class TransactionRepository implements TransactionRepositoryInterface {
  Future<List<Transaction>> fetchData() async {
    Dio _dio = Dio();

    TransactionRest transactionRest = TransactionRest(_dio);

    List<Transaction> transactions = await transactionRest.readData();

    return transactions;
  }
}