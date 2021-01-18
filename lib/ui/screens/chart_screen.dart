import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/transaction/transaction_bloc.dart';
import '../../data/repository/transaction_repository.dart';
import '../widgets/templates/chart_template.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TransactionBloc(TransactionRepository())..add(FetchTransactionData()),
      child: ChartTmp()
    );
  }
}