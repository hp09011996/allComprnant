import 'package:flutter/material.dart';

class NetworkImages extends StatefulWidget {
  @override
  _NetworkImagesState createState() => _NetworkImagesState();
}

class _NetworkImagesState extends State<NetworkImages> {
  TextEditingController url = TextEditingController();
  String imageUrl = '';
  @override
  void initState() {
    imageUrl = 'https://homepages.cae.wisc.edu/~ece533/images/airplane.png';
    url.text = imageUrl;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Network Image'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                imageUrlView(),
                spaceHeight(20),
                syntextView(),
                spaceHeight(20),
                loadImage()
              ],
            ),
          ),
        ));
  }

  dynamic imageUrlView() {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              child: TextField(
                controller: url,
                decoration: const InputDecoration(hintText: 'Enter Image URL'),
              ),
            ),
            FlatButton(
              color: Colors.lightGreen,
              child: const Text('LoadImage'),
              onPressed: () {
                setState(() {
                  imageUrl = url.text;
                  FocusScope.of(context).requestFocus(FocusNode());
                });
              },
            )
          ],
        ),
      ),
    );
  }

  dynamic syntextView() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Method: ',
                style: TextStyle(fontWeight: FontWeight.w500)),
            Expanded(child: Text('Image.network($imageUrl,fit: BoxFit.cover)')),
          ],
        ),
      ),
    );
  }

  dynamic spaceHeight(double height) {
    return SizedBox(
      height: height,
    );
  }

  dynamic loadImage() {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
