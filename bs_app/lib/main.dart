// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';

import 'pages/historyPage.dart';
import 'pages/homePage.dart';
import 'pages/morePage.dart';
import 'pages/playPage.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatefulWidget {
  static const String _title = 'Beep System';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      home: MyStatefulWidget(),

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    /*Text(
      'Settings',
      style: optionStyle,
    ),*/
    Text(
      'History',
      style: optionStyle,
    ),
    Text(
      'Play',
      style: optionStyle,
    ),
    Text(
      'MOre',
      style: optionStyle,
    ),
  ];
  final _pageOptions =[
    HomePage(),
    //SettingsPage(),
    HistoryPage(),
    PlayPage(),
    MorePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color colorBar = Colors.red[900];
  Color color = Colors.red[700];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _widgetOptions.elementAt(_selectedIndex),
        backgroundColor: colorBar,
      ),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: color,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            title: Text('Play'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.white70,
        unselectedFontSize: 11.0,
        showUnselectedLabels: true,
        selectedFontSize: 15.0,
        onTap: _onItemTapped,
      ),
    );
  }
}