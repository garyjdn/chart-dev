import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../bloc/chart/chart_bloc.dart';
import '../../../models/transaction.dart';

class TransactionCardSliderMol extends StatelessWidget {
  List<Transaction> transactions;
  CarouselController _carouselController = CarouselController();

  TransactionCardSliderMol({
    @required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChartBloc, ChartState>(
      listener: (bloc, state) {
        if(state is ChartChangeFocus) {
          _carouselController.animateToPage(state.index, duration: Duration(milliseconds: 200));
        }
      },
      child: CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
          height: 170.0,
          enlargeCenterPage: true,
        ),
        items: transactions.map((t) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${t.brand} ${t.name}'),
                    SizedBox(height: 4),
                    Text(
                      NumberFormat
                        .currency(
                          locale: 'id',
                          symbol: 'Rp ', 
                          decimalDigits: 0
                        ).format(t.price),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    SizedBox(height: 4),
                    Text(
                      DateFormat('dd MMM yyy').format(t.date) + ' - ' + t.location,
                      style: TextStyle(
                        fontSize: 12,
                      )
                    ),
                    SizedBox(height: 15),
                    Text(
                      'KM ${t.km}',
                      style: TextStyle(
                        fontSize: 12,
                      )
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Warna ${t.color}',
                      style: TextStyle(
                        fontSize: 12,
                      )
                    ),
                  ],
                )
              );
            },
          );
        }).toList(),
      ),
    );
  }
}