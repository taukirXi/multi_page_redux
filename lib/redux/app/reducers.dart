import 'package:multi_page_redux/redux/create/create_reducer.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';
import 'package:multi_page_redux/redux/increment/increment_reducer.dart';

AppState reducers(AppState state, dynamic action) {
  print("app reducer");

  return AppState(
      createState: createReducer(state.createState, action),
      incrementState: incrementReducer(state.incrementState, action));
}
