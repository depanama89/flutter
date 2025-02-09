import "package:coffee_card/coffee_prefs.dart";
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My coffee Shop',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
          shadowColor: Colors.brown[900],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const Text('How I like my coffee',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700))),
            Container(
                color: Colors.brown[100],
                padding: EdgeInsets.all(20),
                child: const coffeePrefs())
          ],
        ));
  }
}
