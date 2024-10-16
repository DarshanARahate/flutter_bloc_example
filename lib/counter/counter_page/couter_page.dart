import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/counter/counter_bloc.dart';
import 'package:flutter_bloc_example/counter/counter_event.dart';
import 'package:flutter_bloc_example/counter/counter_state.dart';

class CounterPage extends StatelessWidget {
  int counter = 0;

  CounterPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App using bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterBloc, CounterState>(builder: (context, state) {
              if (state is CounterInitialState) {
                return Text(state.count.toString());
              } else if (state is CounterIncrementState) {
                return Text(state.incrementCount.toString());
              } else if (state is CounterDecrementState) {
                return Text(state.decrementCount.toString());
              } else {
                return Container();
              }
            }, listener: (context, state) {
              if (state is CounterIncrementState) {
                if (state.incrementCount == 5) {}
              } else if (state is CounterDecrementState) {
                var snackBar =
                    SnackBar(content: Text('Decrement Button Pressed'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }),

            // Text("0"),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(
                          CounterIncrementEvent(incrementCount: counter++));
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context).add(
                          CounterDecrementEvent(decrementCount: counter--));
                    },
                    child: Text("-"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
