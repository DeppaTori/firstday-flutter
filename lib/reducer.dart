import 'package:myflutterapp/counterState.dart';
import 'package:myflutterapp/redux.dart';

CounterState reducers(CounterState counterState, action){
  if(action== Action.Inc){
    return CounterState(counterState.counter+1);
  }else if(action== Action.Dec){
    return CounterState(counterState.counter-1);
  }else if(action== Action.Double){
    return CounterState(counterState.counter*2);
  }else if(action== Action.Half){
    return CounterState(counterState.counter ~/2);
  }

  return counterState;
}