
import 'package:multi_page_redux/actions.dart';
import 'package:multi_page_redux/pages/create/create_action.dart';
import 'package:multi_page_redux/pages/create/create_state.dart';
import 'package:multi_page_redux/redux/reducers.dart';

CreateState createReducer(CreateState createState, dynamic action){
  if(action is  AddProfile){
    return CreateState(text:action.text);
  }
  return createState;
}