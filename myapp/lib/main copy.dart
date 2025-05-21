import 'package:flutter/material.dart';
import 'package:myapp/pages/myFirstApp.dart';

// void main() => runApp(const MaterialApp(
//       home: MyFirstApp(),
//     ));
// import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/50'),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nom de l\'utilisateur'),
              Text(
                'Titre',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(child: Text('Contenu principal')),
      ),
    );
  }
}




// class ScaffoldExempleApp extends StatelessWidget {
//   const ScaffoldExempleApp({super.key});

//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: 
//     );
//   }
// }

// class ScaffoldExemple extends StatefulWidget {
//   const ScaffoldExemple({super.key});
//   State<ScaffoldExemple> createState() => _scaffoldExempleState();
// }

// class _scaffoldExempleState extends State<ScaffoldExemple> {
//   int _count = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample code'),
//       ),
//       body: Center(
//         child: Text('tu as appuyé sur le button $_count fois.'),
//       ),
//       backgroundColor: Colors.blueGrey.shade200,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() => _count++),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
// MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('my first app'),
//             centerTitle: true,
//           ),
//           body: Center(
//             child: Text('Hello Patrick'),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {},
//             child: Text('click'),
//           )),
//     )
