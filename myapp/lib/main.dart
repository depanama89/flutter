import 'package:flutter/material.dart';
import 'package:myapp/pages/myFirstApp.dart';
import 'package:myapp/screens/home_screen.dart';

// void main() => runApp(const MaterialApp(
//       home: MyFirstApp(),
//     ));
// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness & workout',
      theme: ThemeData(
          primaryColor: Color(0xFF6C63FF),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: HomeScreen(),
    );
  }
}
