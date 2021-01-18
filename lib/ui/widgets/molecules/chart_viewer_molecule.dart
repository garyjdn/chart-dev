import 'dart:convert';

import 'package:djubli_test/bloc/chart/chart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

import '../../../models/transaction.dart';

class ChartViewerMol extends StatelessWidget {
  final List<Transaction> transactions;

  ChartViewerMol({
    @required this.transactions
  });
  
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    List chartData = transactions.map((t) {
      return [
        '"${t.date}"',
        t.price,
      ];
    }).toList();
    print(chartData);
    return Container(
      height: 300,
      width: deviceSize.width,
      child: Echarts(
        option: '''
          {
            xAxis: {
              type: 'time',
              boundaryGap:false,
            },
            yAxis: {
              type: 'value',
              axisLabel: {
                formatter: function(value, index) {
                  return (value / 1000000) + 'jt' ;
                }
              }
            },
            grid: {
              top:    30,
              bottom: 30,
              left:   '10%',
              right:  '10%',
            },
            tooltip: {
                padding: 10,
                backgroundColor: '#222',
                borderColor: '#777',
                borderWidth: 1,
                formatter: function(data) {
                  var value = data.value;
                  var date = new Date(value[0]);
                  return 'Harga: Rp ' + (value[1]).toLocaleString('id-ID') + '<br>'
                    + 'Tanggal: ' + date.toLocaleDateString('en-GB', {day: 'numeric', month: 'short', year: 'numeric'}) + '<br>';
                }
            },
            series: [{
              symbolSize: 20,
              data: ${chartData},
              type: 'scatter'
            }]
          }
        ''',
        extraScript: '''
          chart.on('click', (params) => {
            if(params.componentType === 'series') {
                Messager.postMessage(JSON.stringify({
                  type: 'select',
                  payload: params.dataIndex,
                })
              );
            }
          });
        ''',
        onMessage: (String msg) {
          var data = json.decode(msg);
          BlocProvider.of<ChartBloc>(context).add(ChartPressed(index: data['payload']));
        },
      ),
    );
  }
}