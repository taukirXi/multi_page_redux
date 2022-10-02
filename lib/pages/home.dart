import 'package:flutter/material.dart';
import 'package:multi_page_redux/pages/create/create.dart';
import 'package:multi_page_redux/pages/increment.dart';
import 'package:multi_page_redux/pages/profile.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

    var _currentIndex = 0;

    var _widgetOptions =[
      Increment(),
      Profile(),
      Create()

    ];

    void _onItemTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.create), label: 'create')
        ],

        currentIndex: _currentIndex,
        onTap: _onItemTapped,

      ),

    );
  }




}
