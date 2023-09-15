import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(''),
    Text(''),
    Text(''),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Ionicons.calculator_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.chatbubble_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_clear_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.reader_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.person_circle_outline),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}