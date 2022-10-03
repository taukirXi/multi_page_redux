import 'package:multi_page_redux/redux/create/create_reducer.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';
import 'package:multi_page_redux/redux/increment/increment_reducer.dart';

AppState reducers(AppState state, dynamic action) {
  // if(action is IncrementAction){
  //   return AppState(state.counter+1);
  // }
  // return prev;
  print("app reducer");

  // if(action is AddProfile) {
  return AppState(
      createState: createReducer(state.createState, action),
      incrementState: incrementReducer(state.incrementState, action));
  // }


}
