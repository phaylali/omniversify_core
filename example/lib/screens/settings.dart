import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: Colors.blue,
        child: const SizedBox(
          height: 100,
          width: 100,
          child: Text('Settings'),
        ),
      ),
    )));
  }
}
