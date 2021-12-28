import 'package:flutter/material.dart';

class ExpansionTileTest extends StatelessWidget {
  const ExpansionTileTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ExpansionTile(
          title: Text('Hello'),
          children: [Text('Hello')],
        ),
      ),
    );
  }
}
