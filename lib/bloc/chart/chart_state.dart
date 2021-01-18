part of 'chart_bloc.dart';

abstract class ChartState extends Equatable{
  const ChartState();
  
  @override
  List<Object> get props => [];
}

class ChartInitial extends ChartState {}

class ChartChangeFocus extends ChartState {
  final int index;

  ChartChangeFocus({@required this.index})
    : assert(index != null);

  @override
  List<Object> get props => [index];
}
