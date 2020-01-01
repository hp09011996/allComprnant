import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class AvatarList extends StatefulWidget {
  @override
  _AvatarList createState() => _AvatarList();
}

class _AvatarList extends State<AvatarList> {
  List<String> inputs = [];
  List<Image> avatar = [];

  // List of Image
  var avatarList = [
    const AssetImage('images/movie.png'),
    const AssetImage('images/food.png'),
    const AssetImage('images/sing.png'),
    const AssetImage('images/dance.png'),
    const AssetImage('images/actor.png'),
    const AssetImage('images/artist.png'),
    const AssetImage('images/travel.png'),
    const AssetImage('images/study.png')
  ];
  @override
  void initState() {
    setState(() {
      // Label For List of Item
      inputs.add('Movie');
      inputs.add('Food');
      inputs.add('Song');
      inputs.add('Dance');
      inputs.add('Actor');
      inputs.add('Artist');
      inputs.add('Travelling');
      inputs.add('Study');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theamColor,
        title: const Text('Avtar List'),
      ),
      body: ListView.builder(
          itemCount: inputs.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    // Image Containert
                    CircleAvatar(
                      backgroundImage: avatarList[index],
                      backgroundColor: Colors.indigo[50],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    // Label for List
                    Expanded(
                      child: Text(
                        inputs[index],
                      ),
                    ),
                    // Arrow Icon
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ]),
                  Divider(
                    color: Colors.grey[600],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
