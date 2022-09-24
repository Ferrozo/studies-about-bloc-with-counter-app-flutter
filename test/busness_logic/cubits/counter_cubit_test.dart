import 'package:flutter_test/flutter_test.dart';
import 'package:studies_about_bloc_matser_class/busness_logic/cubits/counter_cubit.dart';

void main() {
  group('Passed:', () {
    CounterCubit? counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit!.close();
    });
    test('the initial state for CounterCubit is CounterState(counterValue:0) ',
        () {
      expect(counterCubit?.state, CounterState(counterValue: 0));
    });
  });
}
