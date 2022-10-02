import 'package:flutter/material.dart';
import 'package:multi_page_redux/actions.dart';
import 'package:multi_page_redux/pages/create/create_action.dart';
import 'package:multi_page_redux/pages/create/create_reducer.dart';
import 'package:multi_page_redux/redux/app_state.dart';

AppState  reducers(AppState state, dynamic action){

  // if(action is IncrementAction){
  //   return AppState(prev.counter+1);
  // }
  // return prev;
  print("object");


  if(action is AddProfile) {
    return AppState(createState: createReducer(state.createState, action));
  }

  return state;

}


