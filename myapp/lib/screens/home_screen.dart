import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Dear Pro",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFF6C63FF).withValues(alpha: 0.2),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 78, 78, 156),
                      size: 30,
                    ) // 0x33 is 20% opacity
                    )
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF6c63FF), Color(0xFF5A54D1)]),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF6c63FF).withValues(alpha: 0.3),
                        blurRadius: 15,
                        offset: Offset(0, 10))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Target",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "485 kcal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.show_chart,
                            color: Color(0xFF6c63FF),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("View Progress",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6c63FF),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryCard('Cardio', Icons.favorite, Colors.redAccent),
                _buildCategoryCard(
                    'Strength', Icons.fitness_center, Colors.blue),
                _buildCategoryCard(
                    'Yoga', Icons.self_improvement, Colors.green),
                _buildCategoryCard('All', Icons.grid_view, Colors.purple)
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today workouts",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            _buildWorkoutCard('Full Body Workout', '45 min - Medium',
                Icons.fitness_center, 0.68),
            SizedBox(height: 15),
            _buildWorkoutCard(
              'Upper Body Strength',
              '35 min - Intermeiate',
              Icons.accessibility_new,
              0.45,
            ),
            SizedBox(height: 15),
            _buildWorkoutCard(
              'Cardio Blast ',
              '20 min - High Intensity',
              Icons.directions_run,
              0.32,
            )
          ],
        ),
      ),
    )));
  }

  Widget _buildCategoryCard(String title, IconData icon, Color color) {
    return Container(
      width: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          // Container circulaire avec l'icône à l'intérieur
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20), // <-- Niveau clé
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
  // Widget _buildCategoryCard(String title, IconData icon, Color color) {
  //   return Container(
  //     width: 80,
  //     padding: EdgeInsets.all(10),
  //     decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(12),
  //         boxShadow: [
  //           BoxShadow(
  //               color: Colors.grey.withValues(alpha: 0.1),
  //               spreadRadius: 2,
  //               blurRadius: 10)
  //         ]),
  //     child: Column(
  //       children: [
  //         Container(
  //           height: 40,
  //           width: 40,
  //           decoration: BoxDecoration(
  //               color: color.withValues(alpha: 0.2), shape: BoxShape.circle),
  //         ),
  //         SizedBox(height: 8),
  //         Text(title,
  //             style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
  //       ],
  //     ),
  //   );
  // }

  Widget _buildWorkoutCard(
    String title,
    String subtitle,
    IconData icon,
    double progress,
  ) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.grey.withValues(alpha: 0.1))
          ]),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFF6c63FF).withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Color(0xFF6c63FF),
                size: 25,
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey[600], fontSize: 13),
              )
            ],
          )),
          Column(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    CircularProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[200],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF6c63FF),
                      ),
                      strokeWidth: 5,
                    ),
                    Center(
                      child: Text(
                        '${(progress * 100).round()}%',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
