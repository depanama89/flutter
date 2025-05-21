import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppConteur(),
      child: MaterialApp(
        title: "Counter App",
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppConteur extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void counterFunction() {
    _count++;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppConteur>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Conteur App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            Text("Le bouton a été  cliquer autant de fois"),
            SizedBox(height: 32),
            Text(appState.count.toString() + "  " + "Fois ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700)),
            SizedBox(height: 32),
            ElevatedButton(
                onPressed: () {
                  appState.counterFunction();
                },
                child: Text('Incrementer'))
          ],
        ),
      ),
    );
  }
}
