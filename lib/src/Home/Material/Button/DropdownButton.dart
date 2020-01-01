import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class City {
  const City(this.name);

  final String name;
}

class DropdownBtn extends StatefulWidget {
  @override
  State createState() => DropdownButton1();
}

class DropdownButton1 extends State<DropdownBtn> {
  City selectedCity;
  List<City> citys = <City>[
    const City('Bombay'),
    const City('Surat'),
    const City('Ahemdabad'),
    const City('Vadodara')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button'),
        backgroundColor: theamColor,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 140),
        child: DropdownButton<City>(
          hint: const Text(
            'Select a city',
          ),
          value: selectedCity,
          onChanged: (City value) {
            setState(() {
              selectedCity = value;
            });
          },
          items: citys.map((City city) {
            return DropdownMenuItem<City>(
              value: city,
              child: Text(
                city.name,
                style: TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
