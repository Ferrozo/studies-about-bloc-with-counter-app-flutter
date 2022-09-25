import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:studies_about_bloc_matser_class/logic/cubits/counter_cubit.dart';

void main() {
  group('Passed:', () {
    CounterCubit? counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit?.close();
    });
    test('the initial state for CounterCubit is CounterState(counterValue: 0)',
        () {
      expect(counterCubit!.state, CounterState(counterValue: 0));
    });

    blocTest<CounterCubit, CounterState>(
      'The cubit should emit a CounterState(counterValue: 1, wasIncremented: true) when increment() function is called.',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counterValue: 1, wasIncremented: true)],
    );

    blocTest<CounterCubit, CounterState>(
      'The cubit should emit a CounterState(counterValue: -1, wasIncremented:false) when decrement() function is called.',
      build: () => CounterCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () => [CounterState(counterValue: -1, wasIncremented: false)],
    );
  });
}
