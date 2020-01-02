import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  @override
  _SimpleSliderState createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  double _diffLevel = 2;
  var gradesRange = const RangeValues(0, 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20.0),
            Slider.adaptive(
              value: _diffLevel.toDouble(),
              onChanged: (double newValue) {
                setState(() {
                  _diffLevel = newValue;
                });
              },
              min: 1,
              max: 2,
              divisions: 3,
              label: _diffLevel.toString(),
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Level 1',
                  style: TextStyle(fontSize: 16.0),
                ),
                const Spacer(),
                Text('Level 3', style: TextStyle(color: Colors.grey.shade700)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
