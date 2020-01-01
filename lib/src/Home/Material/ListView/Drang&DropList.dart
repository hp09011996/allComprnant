import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

enum _ReorderableListType {
  /// A list tile that contains three lines of text and a checkbox.
  threeLine,
}

class DragDropList extends StatefulWidget {
  const DragDropList({Key key}) : super(key: key);
  @override
  _DragDropList createState() => _DragDropList();
}

class _ListItem {
  _ListItem(this.value);

  final String value;
}

class _DragDropList extends State<DragDropList> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  final _ReorderableListType _itemType = _ReorderableListType.threeLine;

  // Number of Item For List
  final List<_ListItem> _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
  ].map<_ListItem>((String item) => _ListItem(item)).toList();

// List Item Container
  Widget buildListTile(_ListItem item) {
    Widget listTile;
    switch (_itemType) {
      case _ReorderableListType.threeLine:
        listTile = ListTile(
          key: Key(item.value),
          isThreeLine: true,
          title: Text('item represents ${item.value}.'),
          subtitle: const Text('Even more additional list item '
              'information appears on line three.'),
          leading: Icon(Icons.drag_handle),
        );
        break;
    }

    return listTile;
  }

// Calling Function When Item Draggable (Manage Index for List Item )
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final _ListItem item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Drag & Drop list'),
        backgroundColor: theamColor,
      ),
      body: Scrollbar(
        child: ReorderableListView(
          header: _itemType != _ReorderableListType.threeLine
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Header of the list',
                      style: Theme.of(context).textTheme.headline))
              : null,
          onReorder: _onReorder,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: _items.map<Widget>(buildListTile).toList(),
        ),
      ),
    );
  }
}
