import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class IconList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('icon List'),
          backgroundColor: theamColor,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              ItemContainer(
                titleText: 'Airplane Mode',
                icondata: Icon(
                  Icons.flight,
                  color: Colors.white,
                ),
                backColor: Colors.orange,
              ),
              ItemContainer(
                titleText: 'Wi-fi',
                icondata: Icon(
                  Icons.wifi,
                  color: Colors.white,
                ),
                backColor: Colors.blue[800],
              ),
              ItemContainer(
                titleText: 'Bluttoth',
                icondata: Icon(
                  Icons.bluetooth,
                  color: Colors.white,
                ),
                backColor: Colors.blue[800],
              ),
              ItemContainer(
                titleText: 'Mobile data',
                icondata: Icon(
                  Icons.data_usage,
                  color: Colors.white,
                ),
                backColor: Colors.green,
              ),
              ItemContainer(
                titleText: 'Personal Hotspot',
                icondata: Icon(
                  Icons.insert_link,
                  color: Colors.white,
                ),
                backColor: Colors.green,
              ),
              ItemContainer(
                titleText: 'Notification',
                icondata: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                backColor: Colors.red[700],
              ),
              ItemContainer(
                titleText: 'Control Center',
                icondata: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                backColor: Colors.grey[600],
              ),
              ItemContainer(
                titleText: 'Do Not disturb',
                icondata: Icon(
                  Icons.hotel,
                  color: Colors.white,
                ),
                backColor: const Color(0xff4D3093),
              ),
              ItemContainer(
                titleText: 'Software update',
                icondata: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                backColor: Colors.grey[600],
              ),
              ItemContainer(
                titleText: 'Privacy',
                icondata: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                backColor: Colors.blue[800],
              ),
            ],
          ),
        ));
  }
}

// List Item Container (Contain Icon and LabelText)
class ItemContainer extends StatelessWidget {
  const ItemContainer(
      {@required this.icondata, @required this.titleText, this.backColor});
  final String titleText;
  final Icon icondata;
  final Color backColor;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            color: backColor,
          ),
          height: 30,
          width: 30,
          child: icondata,
        ),
        title: Text(
          titleText,
        ),
        onTap: () {},
      ),
      Divider(
        color: Colors.grey[600],
      ),
    ]);
  }
}
