import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('images/pat.jpeg'),
            )),
        title: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Hello ,Patrick KUDIATU",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "welcome back",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                )
              ],
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
