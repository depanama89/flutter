import 'package:flutter/material.dart';

class CountIncrement extends StatelessWidget {
  const CountIncrement({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Incrementer app',
        home: const ComponentCount(title: "Incrementation"));
  }
}

class ComponentCount extends StatefulWidget {
  const ComponentCount({super.key, required this.title});

  final String title;
  @override
  State<ComponentCount> createState() => _ComponentPageCount();
}

class _ComponentPageCount extends State<ComponentCount> {
  int _count = 0;
  void increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Incrementer un nombre",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade200,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Tu as clique le button plus de :"),
          SizedBox(height: 16),
          Text(
            '$_count',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ElevatedButton(onPressed: increment, child: Icon(Icons.add))
        ],
      )),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: increment,
      //   tooltip: 'incrementer',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
