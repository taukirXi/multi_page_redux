import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_page_redux/pages/create.dart';
import 'package:multi_page_redux/redux/app/app_state.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('value from increment page'),
            /*
            * to show only one single store can
            * have all the values and inject whenever it needs
            * */
            StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (_, state) => Text('${state.incrementState.counter}'),
            ),
            SizedBox(
              height: 10,
            ),
            Text('value from create page'),
            StoreConnector<AppState, AppState>(
              // same as before
              converter: (store) => store.state,
              builder: (_, state) => Text('${state.createState.text}'),
            )
          ],
        ),
      ),
    );
  }
}
