import 'package:flutter/material.dart';

class coffeePrefs extends StatelessWidget {
  const coffeePrefs({super.key});
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength:'),
            const Text('3'),
            Image.asset('assets/img/coffee_bean.png', width: 25),
            const SizedBox(width: 50)
          ],
        ),
        Row(children: [
          const Text('Sugars:'),
          const Text('4'),
          Image.asset('assets/img/sugar_cube.png', width: 25),
          const SizedBox(width: 50)
        ])
      ],
    );
  }
}
