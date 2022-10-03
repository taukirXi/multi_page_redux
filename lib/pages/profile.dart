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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Create()),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
          Text('value from increment page'),
          StoreConnector<AppState, AppState>(
            converter: (store) => store.state,
            builder: (_, state) => Text('${state.incrementState.counter}'),
          ),

          SizedBox(height: 10,),
          Text('value from create page'),

          StoreConnector<AppState, AppState>(converter: (store) => store.state,
              builder: (_, state) => Text('${state.createState.text}'),)
        ],
      ),
    );
  }
}
