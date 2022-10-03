import 'package:multi_page_redux/redux/create/create_action.dart';
import 'package:multi_page_redux/redux/create/create_state.dart';

CreateState createReducer(CreateState state, dynamic action) {
  if (action is CreateAction) {
    return CreateState(text: action.text);
  }
  return state;
}
