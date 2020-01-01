import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class ListGrid extends StatefulWidget {
  @override
  _ListGrid createState() => _ListGrid();
}

class _ListGrid extends State<ListGrid> {
  final ScrollController _scrollController = ScrollController();

  var verticalList = const [
    AssetImage('images/img_20.png'),
    AssetImage('images/img_18.png'),
    AssetImage('images/img_4.png'),
    AssetImage('images/img_10.png'),
    AssetImage('images/img_12.png'),
    AssetImage('images/img_14.png'),
    AssetImage('images/img_11.png'),
  ];
  var horizontalList = const [
    AssetImage('images/img_19.png'),
    AssetImage('images/img_16.png'),
    AssetImage('images/img_9.png'),
    AssetImage('images/img_5.png'),
    AssetImage('images/img_3.png'),
    AssetImage('images/img_21.png'),
    AssetImage('images/img_6.png'),
    AssetImage('images/img_15.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView With List'),
        backgroundColor: theamColor,
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                // Horizontal List
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child:
                          Image(image: horizontalList[index], fit: BoxFit.fill),
                    ),
                  );
                },
                itemCount: horizontalList.length,
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              // Vertical List
              (BuildContext context, int index) {
                return Card(
                  child: Container(
                      child:
                          Image(image: verticalList[index], fit: BoxFit.cover)),
                );
              },
              childCount: verticalList.length,
            ),
          ),
        ],
      ),
    );
  }
}
