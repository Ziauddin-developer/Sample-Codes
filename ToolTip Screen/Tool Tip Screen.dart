import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip Example')),
      body: Center(
        child: Tooltip(
          message:
              'This is a button', // The message to display when hovering/tapping
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Hover or Tap me!'),
          ),
        ),
      ),
    );
  }
}
