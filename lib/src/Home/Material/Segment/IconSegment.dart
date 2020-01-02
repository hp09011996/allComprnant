import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class IconSegment extends StatefulWidget {
  @override
  _IconSegment createState() => _IconSegment();
}

class _IconSegment extends State<IconSegment>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segment With Icon'),
        backgroundColor: theamColor,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(border: Border.all(color: theamColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Sign In Button
                  FlatButton(
                      color: _currentIndex == 0 ? theamColor : Colors.white,
                      onPressed: () {
                        _tabController.animateTo(0);
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                          ),
                          Text(
                            'SignIn',
                            style: TextStyle(
                                color: _currentIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ],
                      )),

                  // Sign Up Button
                  FlatButton(
                      color: _currentIndex == 1 ? theamColor : Colors.white,
                      onPressed: () {
                        _tabController.animateTo(1);
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person_add,
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(left: 10.0),
                          ),
                          Text(
                            'SignUp',
                            style: TextStyle(
                                color: _currentIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ],
                      ))
                ],
              ),
            ),
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
