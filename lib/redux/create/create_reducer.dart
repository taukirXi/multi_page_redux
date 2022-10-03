import 'package:multi_page_redux/redux/create/create_action.dart';
import 'package:multi_page_redux/redux/create/create_state.dart';

CreateState createReducer(CreateState state, dynamic action) {
  // action is what user is interacting
  if (action is CreateAction) {
    // this reducer will pass the value to create state

    return CreateState(text: action.text);
  }
  return state;
}
