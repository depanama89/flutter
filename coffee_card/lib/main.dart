import 'package:coffee_card/home.dart';
import 'package:coffee_card/coffee_prefs.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
      // home: Sandbox(),
    ));

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SandBox'),
          backgroundColor: Colors.grey,
          titleSpacing: 100.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.red,
              child: const Text('one'),
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: const Text('two'),
            ),
            Container(
                height: 300, color: Colors.green, child: const Text('three'))
          ],
        ));
  }
}
