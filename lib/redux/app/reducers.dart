import 'package:multi_page_redux/redux/create/create_reducer.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';
import 'package:multi_page_redux/redux/increment/increment_reducer.dart';

// app reducers

AppState reducers(AppState state, dynamic action) {
  // to check if it works
  print("app reducer");

  return AppState(
    // in the app reducers other reducers will be declared
    // only one store can have all the reducers and state and action
      createState: createReducer(state.createState, action),
      incrementState: incrementReducer(state.incrementState, action));
}
