import 'package:flutter/material.dart';

class AssetsImage extends StatefulWidget {
  @override
  _AssetsImageState createState() => _AssetsImageState();
}

class _AssetsImageState extends State<AssetsImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[syntextView(), spaceHeight(20.0), loadImage()],
        ),
      ),
    );
  }

  dynamic syntextView() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text('Method:', style: TextStyle(fontWeight: FontWeight.w500)),
          Text('Image.asset(\'images/img_21.png\')'),
        ],
      ),
    );
  }

  dynamic spaceHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  dynamic loadImage() {
    return Image.asset('images/img_21.png');
  }
}
