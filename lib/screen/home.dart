import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.yellow.shade700, Colors.yellow.shade300],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanvir Ahamed10',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Upper Intermediate',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: Icon(Icons.message, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/user1.jpg')),
                      SizedBox(width: 5),
                      CircleAvatar(backgroundImage: AssetImage('assets/user2.jpg')),
                      SizedBox(width: 5),
                      CircleAvatar(backgroundImage: AssetImage('assets/user3.jpg')),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Find tutors who get you talking',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search: Try accent, common l',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: ['IELTS', 'business', 'interview', 'TOEFL', 'engineer', 'finance']
                        .map((label) => Chip(
                              label: Text(label),
                              backgroundColor: Colors.grey[200],
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.orange[200],
              child: Row(
                children: [
                  Icon(Icons.local_offer, color: Colors.black),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      '⏰ 24 HOURS ONLY - 40% OFF + Bonus: 60min',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
