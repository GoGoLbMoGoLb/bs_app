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

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Beep System';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
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
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 2: History',
      style: optionStyle,
    ),
    Text(
      'Index 3: Play',
      style: optionStyle,
    ),
    Text(
      'Index 4: MOre',
      style: optionStyle,
    ),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: color,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
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