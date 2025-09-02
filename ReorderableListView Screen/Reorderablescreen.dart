import 'package:flutter/material.dart';

class ReorderableListScreen extends StatefulWidget {
  @override
  _ReorderableListScreenState createState() => _ReorderableListScreenState();
}

class _ReorderableListScreenState extends State<ReorderableListScreen> {
  // List of items to display in the list
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  // Function to handle the reordering of the list
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final String item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reorderable List View')),
      body: ReorderableListView(
        onReorder: _onReorder,
        children: List.generate(
          items.length,
          (index) => Card(
            key: ValueKey(items[index]),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              title: Text(items[index]),
              tileColor: Colors.amberAccent,
            ),
          ),
        ),
      ),
    );
  }
}
