import 'package:myflutterapp/counterState.dart';
import 'package:myflutterapp/redux.dart';

CounterState reducers(CounterState counterState, action){
  if(action== Action.Inc){
    return CounterState(counterState.counter+1);
  }

  return counterState;
}