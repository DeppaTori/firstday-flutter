import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myflutterapp/reducer.dart';

import 'counterState.dart';

enum Action { Inc }

class ReduxPage extends StatelessWidget {

  final Store store = Store<CounterState>(reducers,initialState: CounterState(0));

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Redux"),

          ),
          body: ColumnData(),
        ),
      ),
    );
  }
}

class ColumnData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CounterState,CounterState>(
      converter: (store)=>store.state,
      builder: (context, state){
        return Column(
          children: <Widget>[
            Text("The value of counter is "+state.counter.toString()),
            StoreConnector<CounterState,Function>(
              converter: (store){
                return ()=>store.dispatch(Action.Inc);
              },
              builder: (context, callback){
                return FlatButton(
                  onPressed: (){
                    callback();
                  },
                  child: Text("Add"),
                );
              },

            )
          ],
        );
      },

    );
  }
}

