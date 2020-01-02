import 'package:flutter/material.dart';

class RangeSliders extends StatefulWidget {
  @override
  _RangeSlidersState createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<RangeSliders> {
  var gradesRange = const RangeValues(0, 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40.0),
            RangeSlider(
              min: 0,
              max: 5,
              divisions: 5,
              labels: RangeLabels('${gradesRange.start}', '${gradesRange.end}'),
              values: gradesRange,
              onChanged: (RangeValues value) {
                setState(() {
                  gradesRange = value;
                });
              },
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Level 1',
                  style: TextStyle(fontSize: 16.0),
                ),
                const Spacer(),
                Text('Level 5', style: TextStyle(color: Colors.grey.shade700)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
