import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Switch'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 3.0,
                alignment: Alignment.center,
                child: Switch(
                  activeTrackColor: Colors.pink,
                  inactiveTrackColor: Colors.pink[50],
                  value: _enabled,
                  onChanged: (bool value) {
                    setState(() {
                      _enabled = value;
                    });
                  },
                  activeThumbImage: const AssetImage('images/travel.png'),
                  inactiveThumbImage: const AssetImage('images/study.png'),
                ),
              ),
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 2.0,
                alignment: Alignment.center,
                child: Switch(
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.green[50],
                  value: _enabled,
                  onChanged: (bool value) {
                    setState(() {
                      _enabled = value;
                    });
                  },
                  activeThumbImage: const AssetImage('images/dance.png'),
                  inactiveThumbImage: const AssetImage('images/artist.png'),
                ),
              ),
            ),
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 1.5,
                alignment: Alignment.center,
                child: Switch(
                  activeTrackColor: Colors.amber,
                  inactiveTrackColor: Colors.amber[50],
                  value: _enabled,
                  onChanged: (bool value) {
                    setState(() {
                      _enabled = value;
                    });
                  },
                  activeThumbImage: const AssetImage('images/singing.png'),
                  inactiveThumbImage: const AssetImage('images/reading.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
