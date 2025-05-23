import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F0E8), // Light beige background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Learn",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: false,
      ),
       
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              "LESSONS AND COURSES",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildOption(Icons.school, "Take a private lesson"),
            _buildOption(Icons.groups, "Learn in small groups"),
            _buildOption(Icons.book, "Explore free courses"),
            SizedBox(height: 20),
            Text(
              "ACTIVITIES",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildOption(Icons.mic, "Speak with CamblyAI"),
            _buildOption(Icons.text_fields, "Expand your vocabulary"),
            _buildOption(Icons.flag, "Take a speaking quiz"),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, size: 30, color: Colors.black),
        title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
        onTap: () {},
      ),
    );
  }
}
