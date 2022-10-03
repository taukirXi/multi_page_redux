import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_page_redux/pages/home.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';
import 'package:multi_page_redux/redux/app/reducers.dart';


import 'package:redux/redux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // store initialization
  // store take reducers and app initial state
  final store = Store(reducers, initialState: AppState.initialState());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // store provider
    // store provider needs to at the root of the project or my app
    // in that case store need to be pass to the  child
    // so provider can pass the values to other part of the app
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
