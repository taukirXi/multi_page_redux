import 'package:flutter/material.dart';
import 'package:multi_page_redux/pages/create/create_state.dart';

class AppState {
  // final int _counter;
  // // dynamic _createState;
  //
  //
  //
  //
  // int get counter => _counter;
  // // dynamic get createState => _createState;
  // AppState(this._counter);
  //
  // AppState.initialState() : _counter = 0;

  final CreateState createState;

  AppState({required this.createState});

  // factory AppState.initial(){
  //   return AppState(createState: CreateState.initialState());
  // }
  //

  AppState.initialState() : createState = CreateState.initialState();
}
