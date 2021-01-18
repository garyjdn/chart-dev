import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../bloc/chart/chart_bloc.dart';
import '../../../bloc/transaction/transaction_bloc.dart';
import '../molecules/chart_viewer_loading_molecule.dart';
import '../molecules/chart_viewer_molecule.dart';
import '../molecules/transaction_card_slider_loading_molecule.dart';
import '../molecules/transaction_card_slider_molecule.dart';

class ChartOrg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Transaction> transactions = [
    //   Transaction(
    //     id: 1,
    //     brand: 'Toyota',
    //     name: 'Camry',
    //     year: 2017,
    //     type: 'Sedan',
    //     color: 'Hitam',
    //     km: 1000,
    //     location: 'Surabaya',
    //     price: 500000000,
    //     date: DateTime.parse('2015-01-31')
    //   ),
    //   Transaction(
    //     id: 2,
    //     brand: 'Toyota',
    //     name: 'Camry',
    //     year: 2017,
    //     type: 'Sedan',
    //     color: 'Putih',
    //     km: 10000,
    //     location: 'DKI Jakarta',
    //     price: 400000000,
    //     date: DateTime.parse('2016-11-30')
    //   ),
    //   Transaction(
    //     id: 3,
    //     brand: 'Toyota',
    //     name: 'Camry',
    //     year: 2017,
    //     type: 'Sedan',
    //     color: 'Silver',
    //     km: 25000,
    //     location: 'DKI Jakarta',
    //     price: 335000000,
    //     date: DateTime.parse('2017-02-02')
    //   ),
    //   Transaction(
    //     id: 4,
    //     brand: 'Toyota',
    //     name: 'Camry',
    //     year: 2017,
    //     type: 'Sedan',
    //     color: 'Putih',
    //     km: 26000,
    //     location: 'Bandung',
    //     price: 300000000,
    //     date: DateTime.parse('2017-04-20')
    //   ),
    //   Transaction(
    //     id: 5,
    //     brand: 'Toyota',
    //     name: 'Camry',
    //     year: 2017,
    //     type: 'Sedan',
    //     color: 'Abu',
    //     km: 40000,
    //     location: 'DKI Jakarta',
    //     price: 200000000,
    //     date: DateTime.parse('2018-03-03')
    //   ),
    // ];

    return BlocProvider(
      create: (BuildContext context) => ChartBloc(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Image.network(
                        "https://www.nicepng.com/png/full/302-3021873_new-2015-toyota-camry-toyota-camry-2015-side.png",
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Shimmer.fromColors(
                            period: Duration(milliseconds: 800),
                            baseColor: Colors.grey[300],
                            highlightColor: Color(0xfffafafa),
                            child: Container(
                              width: double.infinity,
                              height: 38,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(8)
                              )
                            )
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Toyota Camry 2.5v Sedan",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87
                            )
                          ),
                          Text(
                            "(2015)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                BlocBuilder<TransactionBloc, TransactionState>(
                  builder: (context, state) {
                    if(state is TransactionLoadInProgress) {
                      return ChartViewerLoadingMol();
                    } else if(state is TransactionLoadSuccess) {
                      return ChartViewerMol(transactions: state.transactions);
                    } else {
                      return Container();
                    }
                  }
                ),
              ],
            )
          ),

          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xffeaeaea),
            ),
            child: BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
                if(state is TransactionLoadInProgress) {
                  return TransactionCardSliderLoadingMol();
                } else if(state is TransactionLoadSuccess) {
                  return TransactionCardSliderMol(transactions: state.transactions);
                } else {
                  return Container();
                }
              }
            )
          ),
        ],
      ),
    );
  }
}