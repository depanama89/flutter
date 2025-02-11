import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My favorite things',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange.shade400,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(leading: Icon(Icons.map), title: Text('Madesu')),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone'))
          ],
        ),
      ),
    );
  }
}
