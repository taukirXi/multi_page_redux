import 'package:multi_page_redux/redux/create/create_state.dart';
import 'package:multi_page_redux/redux/increment/increment_state.dart';

class AppState {

  late CreateState createState;
  late IncrementState incrementState;

  AppState({required this.createState, required this.incrementState});

  // factory AppState.initial(){
  //   return AppState(createState: CreateState.initialState());
  // }
  //

  AppState.initialState()
      : createState = CreateState.initialState(),
        incrementState = IncrementState.initialState();
}
