import 'package:multi_page_redux/redux/increment/increment_action.dart';
import 'package:multi_page_redux/redux/increment/increment_state.dart';

IncrementState incrementReducer(IncrementState state, dynamic action) {
  if (action is IncrementAction) {
    return IncrementState(state.counter + 1);
  }
  return state;
}
