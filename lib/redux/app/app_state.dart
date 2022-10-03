import 'package:multi_page_redux/redux/create/create_state.dart';
import 'package:multi_page_redux/redux/increment/increment_state.dart';
// app state
class AppState {


  // create state and increment state
  // plus other state if have
  //
  late CreateState createState;
  late IncrementState incrementState;

  // constructor
  AppState({required this.createState, required this.incrementState});

  // factory AppState.initial(){
  //   return AppState(createState: CreateState.initialState());
  // }
  //

  // other state has to be initialize with in app state initial
  // so that when app state initialize other state will also be initialize

  AppState.initialState()
      : createState = CreateState.initialState(),
        incrementState = IncrementState.initialState();
}
