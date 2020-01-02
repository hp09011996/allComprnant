import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SimpleTabBar();
}

class _SimpleTabBar extends State<SimpleTabBar> with TickerProviderStateMixin {
  TabController _controller;
  Tabs _tabHandler;
  var items = [];

  final List<Tabs> _tabs = [
    Tabs(title: 'Home'),
    Tabs(
      title: 'Message',
    ),
    Tabs(
      title: 'Profile',
    ),
  ];

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    _tabHandler = _tabs[0];
    _controller.addListener(_handleSelected);
    super.initState();
  }

  void _handleSelected() {
    setState(() {
      _tabHandler = _tabs[_controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: theamColor,
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.grey[300],
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ),
                controller: _controller,
                indicatorColor: theamColor,
                tabs: [
                  Container(
                      width: 100.0,
                      child: const Tab(
                        text: 'Home',
                      )),
                  Container(width: 100.0, child: const Tab(text: 'Message')),
                  Container(width: 100.0, child: const Tab(text: 'Profile')),
                ],
              ),
              title: Text(_tabHandler.title)),
          body: TabBarView(
            controller: _controller,
            children: [
              Home(),
              Message(),
              Profile(),
            ],
          ),
        ));
  }
}

class Tabs {
  Tabs({this.title});
  final String title;
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
