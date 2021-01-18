import 'package:dio/dio.dart';
import 'package:djubli_test/models/transaction.dart';

class TransactionRest {
  Dio _dio;

  TransactionRest(this._dio);

  Future<dynamic> createData() async {}

  Future<List<Transaction>> readData() async {
    // Uncomment jika mau request pakai data API
    // Response response = await _dio.get("http://192.168.1.2:8081/transactions");
    // var responseData = response.data;
    // List<Transaction> transactions = List<Transaction>.from(responseData.map((json) {
    //   return Transaction.fromJson(json);
    // }));

    // Uncomment jika menggunakan mock data
    var transactions = await Future.delayed(Duration(seconds: 5), () {
      return [
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
        Transaction(
          id: 2,
          brand: 'Toyota',
          name: 'Camry',
          year: 2017,
          type: 'Sedan',
          color: 'Putih',
          km: 10000,
          location: 'DKI Jakarta',
          price: 400000000,
          date: DateTime.parse('2016-11-30')
        ),
        Transaction(
          id: 3,
          brand: 'Toyota',
          name: 'Camry',
          year: 2017,
          type: 'Sedan',
          color: 'Silver',
          km: 25000,
          location: 'DKI Jakarta',
          price: 335000000,
          date: DateTime.parse('2017-02-02')
        ),
        Transaction(
          id: 4,
          brand: 'Toyota',
          name: 'Camry',
          year: 2017,
          type: 'Sedan',
          color: 'Putih',
          km: 26000,
          location: 'Bandung',
          price: 300000000,
          date: DateTime.parse('2017-04-20')
        ),
        Transaction(
          id: 5,
          brand: 'Toyota',
          name: 'Camry',
          year: 2017,
          type: 'Sedan',
          color: 'Abu',
          km: 40000,
          location: 'DKI Jakarta',
          price: 200000000,
          date: DateTime.parse('2018-03-03')
        ),
      ];
    });

    return transactions;
  }

  Future<dynamic> updateData() async {}

  Future<dynamic> deleteData() async {}
}