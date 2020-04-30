import 'package:conversions/screens/home_screen.dart';
import 'package:conversions/screens/lengths_screen.dart';
import 'package:conversions/screens/volume_screen.dart';
import 'package:conversions/screens/weights_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/page_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataBank(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: NavigationManager(),
      ),
    );
  }
}

class NavigationManager extends StatefulWidget {
  @override
  _NavigationManagerState createState() => _NavigationManagerState();
}

class _NavigationManagerState extends State<NavigationManager> {
  // current selected screen
  int _selectedIndex = 0;
  String _pageTitle = Home.title;

  // list of possible navigation screens
  final List<PageWidget> _navigationOptions = [
    PageWidget(child: Home(), title: Home.title),
    PageWidget(child: Length(), title: Length.title),
    PageWidget(child: Weight(), title: Weight.title),
    PageWidget(child: Volume(), title: Volume.title)
  ];

  // change when new screen is selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageTitle = _navigationOptions[index].title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
      ),
      body: _navigationOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1E1E1E),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ruler),
              title: Text('Length')
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.weight),
              title: Text('Weight')
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.beer),
              title: Text('Volume')
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
