import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class AppBarSegment extends StatefulWidget {
  @override
  _AppBarSegment createState() => _AppBarSegment();
}

class _AppBarSegment extends State<AppBarSegment>
    with SingleTickerProviderStateMixin {
  // TabController to control and switch tabs
  TabController _tabController;

  // Current Index of tab
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: 2, initialIndex: _currentIndex);
  }

  Widget segment() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Sign In Button
          FlatButton(
            color: _currentIndex == 0 ? Colors.white : theamColor,
            onPressed: () {
              _tabController.animateTo(0);
              setState(() {
                _currentIndex = 0;
              });
            },
            child: Text(
              'SignIn',
              style: TextStyle(
                  color: _currentIndex == 1 ? Colors.white : Colors.black),
            ),
          ),

          // Sign Up Button
          FlatButton(
            color: _currentIndex == 1 ? Colors.white : theamColor,
            onPressed: () {
              _tabController.animateTo(1);
              setState(() {
                _currentIndex = 1;
              });
            },
            child: Text(
              'SignUp',
              style: TextStyle(
                  color: _currentIndex == 1 ? Colors.black : Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('AppBar Segment'),
          backgroundColor: theamColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: segment(),
          )),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                // Restrict scroll by user
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  // Sign In View
                  Center(
                    child: Text('SignIn'),
                  ),
                  // Sign Up View
                  Center(
                    child: Text('SignUp'),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
