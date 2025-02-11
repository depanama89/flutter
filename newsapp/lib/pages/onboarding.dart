import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Image.asset('assets/imgs/onboard.jpg',
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.9),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(height: 18.0),
                  Text(
                    "Get the Latest And Updated\nNews Easily with Us ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Image.asset(
                    'assets/imgs/newspaper.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 80.0, right: 80, top: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
