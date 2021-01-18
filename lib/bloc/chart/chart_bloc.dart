import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'chart_event.dart';
part 'chart_state.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc() : super(ChartInitial());

  @override
  Stream<ChartState> mapEventToState(
    ChartEvent event,
  ) async* {
    if(event is ChartPressed) {
      yield* _chartPressed(event);
    }

  }
  
  Stream<ChartState> _chartPressed(ChartPressed chart) async* {
    yield ChartChangeFocus(index: chart.index);
  }
}
