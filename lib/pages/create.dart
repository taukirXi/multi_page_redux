import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_page_redux/redux/create/create_action.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('create'),
      ),
      body: Column(children: [
        TextField(
          controller: _textController,
        ),
        Row(
          children: [
            // store connector takes app state
            // and dynamic so any others action works fine
            // or we can use types as well
            StoreConnector<AppState, VoidCallback>(
              converter: (store) =>
                  // dispatcher call action and store it to converter
                  () => store.dispatch(CreateAction(_textController.text)),
              // converter pass the to builder
              builder: (_, callback) => FlatButton(
                // call is a function that will take the text and pass it states
                onPressed: () {
                  print("object1");
                  callback();
                  _textController.clear();
                },
                child: Text('send'),
              ),
            ),
            // FlatButton(onPressed: () {}, child: Text('cancel'))


            // to show and pass needs connector

            StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (context, state) => Center(
                // text is stored in state
                // to it will bring the value from state
                child: Text('${state.createState.text}'),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
