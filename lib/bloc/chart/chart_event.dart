part of 'chart_bloc.dart';

abstract class ChartEvent {
  const ChartEvent();
}

class ChartPressed extends ChartEvent {
  int index;

  ChartPressed({@required this.index})
    : assert(index != null);
}