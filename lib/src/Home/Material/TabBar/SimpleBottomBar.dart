import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleBottomBar();
  }
}

class _SimpleBottomBar extends State<SimpleBottomBar> {
  int _currentIndex = 0;
  final _widgetOptions = [
    Home(),
    Message(),
    Profile()
  ]; // Calling Container for particular Tab
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomTabBar'),
        backgroundColor: theamColor,
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      backgroundColor: theamColor,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: theamColor,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          fixedColor: Colors.white, //when item selected
          items: [
            BottomNavigationBarItem(
                title: const Text('Home'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: const Text('Messages'), icon: Icon(Icons.mail)),
            BottomNavigationBarItem(
                title: const Text('Profile'), icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: IconButton(
        iconSize: 200,
        color: Colors.indigo[200],
        icon: Icon(Icons.home),
        onPressed: () {},
      ),
    ));
  }
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: IconButton(
          iconSize: 200,
          color: Colors.indigo[200],
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: IconButton(
        iconSize: 200,
        color: Colors.indigo[200],
        icon: Icon(Icons.person),
        onPressed: () {},
      ),
    ));
  }
}
