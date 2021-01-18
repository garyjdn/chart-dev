import 'package:bloc_test/bloc_test.dart';
import 'package:djubli_test/bloc/chart/chart_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ChartBloc chartBloc;

  group('Chart Bloc Interaction Test', () {
    setUp(() {
      chartBloc = ChartBloc();
    });

    test('Given bloc instantiated, Then the initial state is ChartInitial', () {
      expect(chartBloc.state, ChartInitial());
    });

    blocTest(
      'Given any state, When ChartPressed event added, Then yield ChartChangeFocus state',
      build: () => chartBloc,
      act: (bloc) {
        bloc.add(ChartPressed(index: 1));
        bloc.add(ChartPressed(index: 3));
      },
      expect: [
        ChartChangeFocus(index: 1),
        ChartChangeFocus(index: 3),
      ]
    );

    blocTest(
      'Given any state, When ChartPressed 2 identical event added, Then just yield only 1 ChartChangeFocus state',
      build: () => chartBloc,
      act: (bloc) {
        bloc.add(ChartPressed(index: 1));
        bloc.add(ChartPressed(index: 1));
      },
      expect: [
        ChartChangeFocus(index: 1),
      ]
    );
  });

}