import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class SimpleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          backgroundColor: theamColor,
        ),
        body: simpleGridComponent());
  }

  Widget simpleGridComponent() {
    return Container(
      color: Colors.white30,
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: const <Widget>[
            ImageContainer(
              imagename: 'images/img_1.png',
            ),
            ImageContainer(
              imagename: 'images/img_12.png',
            ),
            ImageContainer(
              imagename: 'images/img_4.png',
            ),
            ImageContainer(
              imagename: 'images/img_20.png',
            ),
            ImageContainer(
              imagename: 'images/img_11.png',
            ),
            ImageContainer(
              imagename: 'images/img_8.png',
            ),
            ImageContainer(
              imagename: 'images/img_10.png',
            ),
            ImageContainer(
              imagename: 'images/img_18.png',
            ),
            ImageContainer(
              imagename: 'images/img_3.png',
            ),
            ImageContainer(
              imagename: 'images/img_13.png',
            ),
            ImageContainer(
              imagename: 'images/img_14.png',
            ),
            ImageContainer(
              imagename: 'images/img_19.png',
            ),
            ImageContainer(
              imagename: 'images/img_15.png',
            ),
            ImageContainer(
              imagename: 'images/img_16.png',
            ),
            ImageContainer(
              imagename: 'images/img_7.png',
            ),
            ImageContainer(
              imagename: 'images/img_6.png',
            ),
            ImageContainer(
              imagename: 'images/img_9.png',
            ),
          ].map((Widget pic) {
            return GridTile(child: pic);
          }).toList()),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({@required this.imagename});
  final String imagename;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(imagename), fit: BoxFit.fitHeight);
  }
}
