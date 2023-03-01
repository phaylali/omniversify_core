import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            color: Colors.yellow,
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Text('Page2'),
            ),
          ),
          Container(
            color: Colors.red,
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Text('Page2'),
            ),
          ),
        ],
      ),
    ));
  }
}
