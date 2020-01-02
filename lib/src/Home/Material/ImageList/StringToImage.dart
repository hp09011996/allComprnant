import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class StringImages extends StatefulWidget {
  @override
  _StringImagesState createState() => _StringImagesState();
}

class _StringImagesState extends State<StringImages> {
  String encodeText = '';
  bool decodeImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('String Image'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              loadImage(),
              encodeImageButton(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  encodeText,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              encodeText != '' ? dcodeImageButton() : Container(),
              decodeImage ? loadDecodedImage() : Container(),
            ],
          ),
        ),
      ),
    );
  }

  dynamic encodeImageButton() {
    return FlatButton(
      child: const Text(
        'Encode Image to String',
        style: TextStyle(color: Colors.white),
      ),
      color: theamColor,
      onPressed: () async {
        final String strdata =
            await getImageFileFromAssets('images/img_21.png');
        setState(() {
          encodeText = strdata;
        });
      },
    );
  }

  dynamic dcodeImageButton() {
    return FlatButton(
      child: const Text(
        'Dcode Image from Text',
        style: TextStyle(color: Colors.white),
      ),
      color: theamColor,
      onPressed: () async {
        setState(() {
          decodeImage = true;
        });
      },
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

  dynamic loadDecodedImage() {
    return imageFromBase64String(encodeText);
  }

  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }

  Future<String> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('$path');
    final Uint8List audioUint8List = byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    final List<int> audioListInt = audioUint8List.cast<int>();
    final String base64Image = base64Encode(audioListInt);
    return base64Image;
  }
}
