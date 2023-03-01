import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.spaceEvenly,
        spacing: 5,
        runSpacing: 5,
        children: [
          Container(
            color: Colors.blue,
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Text('Page1'),
            ),
          ),
        ],
      ),
    ));
  }
}
