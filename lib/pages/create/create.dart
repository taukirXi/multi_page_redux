import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_page_redux/actions.dart';
import 'package:multi_page_redux/pages/create/create_action.dart';
import 'package:multi_page_redux/pages/create/create_state.dart';
import 'package:multi_page_redux/redux/app_state.dart';
import 'package:multi_page_redux/redux/reducers.dart';

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
      body: Column(
        children: [
          TextField(
            controller: _textController,
          ),
          Row(
            children: [
              StoreConnector<AppState, dynamic>(
                
                converter: (store)=>()=> store.dispatch(AddProfile(_textController.text)),
                builder: (_, callback)=> FlatButton(
                  onPressed:(){
                    print("object1");
                    callback();
                  },
                  child: Text('send'),
                ),
              ),
              // FlatButton(onPressed: () {}, child: Text('cancel'))

              StoreConnector<AppState, String>(
                  converter: (store) => store.state.createState.text,
                  builder: (context, text) => Center(
                    child: Text('${text}kkkkk'),
                  ),
                ),

            ],
          )
        ],
      ),
    );
  }
}
