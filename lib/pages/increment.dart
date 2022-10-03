import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';
import 'package:multi_page_redux/redux/increment/increment_action.dart';


class Increment extends StatefulWidget {
  const Increment({Key? key}) : super(key: key);

  @override
  State<Increment> createState() => _IncrementState();
}


class _IncrementState extends State<Increment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('increment state'),
      ),
      body: StoreConnector<AppState, AppState>(
        // here it only show increment value
        converter: (store) => store.state,
        builder: (context, state) => Center(
          child: Text('${state.incrementState.counter}'),
        ),
      ),
      floatingActionButton: StoreConnector<AppState, VoidCallback>(

        //
        converter: (store) => ()=>store.dispatch(IncrementAction()),
        builder: (_, callback) => FloatingActionButton(
          onPressed:  callback,
          child: Icon(Icons.add),
        ),
      ),

    );
  }
}
