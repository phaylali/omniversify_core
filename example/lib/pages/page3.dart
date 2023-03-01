import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
              child: Text('Page3'),
            ),
          ),
          Container(
            color: Colors.red,
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Text('Page3'),
            ),
          ),
          Container(
            color: Colors.green,
            child: const SizedBox(
              height: 100,
              width: 100,
              child: Text('Page3'),
            ),
          ),
        ],
      ),
    ));
  }
}
