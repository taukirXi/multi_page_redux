import 'package:multi_page_redux/redux/increment/increment_action.dart';
import 'package:multi_page_redux/redux/increment/increment_state.dart';

IncrementState incrementReducer(IncrementState state, dynamic action) {
  if (action is IncrementAction) {
    // is no payload is in action
    // stata needs to manipulate to show state changes
    return IncrementState(state.counter + 1);
  }
  return state;
}
