import 'package:firstproject/modules/counter/cubit/cubit.dart';
import 'package:firstproject/modules/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenBloc extends StatelessWidget {
  const CounterScreenBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context , state) {
          if(state is CounterInitialState) print('initial state');
          if(state is CounterPlusState) print('plus state ${state.counter}');
          if(state is CounterMinusState) print('minus state ${state.counter}');
        },
        builder: (context ,state ) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){
                         CounterCubit.get(context).minus();
                      },
                      child: const Text(
                          'MINUS'
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(
                          fontSize: 90,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        CounterCubit.get(context).plus();
                      },
                      child: const Text(
                          'PLUS'
                      )
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
