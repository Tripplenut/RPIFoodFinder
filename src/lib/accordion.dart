// import 'package:flutter/material.dart';

/*
* This file contains a potential accordion that we can use
* Study it completely it so we can use it
* Also modify it to take  a list of text widgets
* This will be useful for when we compile all the data into its own list
* and things of that nature
*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Accordion Demo'),
        ),
        body: Center(
          child: Accordion(
            title: 'Accordion title',
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Text('Accordion content'),
            ),
          ),
        ),
      ),
    );
  }
}

class Accordion extends StatefulWidget {
  final String? title;
  final Widget? child;

  const Accordion({Key? key, this.title, this.child}) : super(key: key);

  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title ?? '',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  _expanded ? Icons.expand_less : Icons.expand_more,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        if (_expanded) widget.child ?? Container(),
      ],
    );
  }
}
*/