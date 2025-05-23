import 'package:flutter/material.dart';
import 'package:untitled1/screen/tutor/tutor_profile.dart';

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'IELTS, IT, hobby',
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.filter_list),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.bookmark_border, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text('Showing:', style: TextStyle(fontSize: 16)),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('Online', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                TutorCard(name: 'Derek: Teacher Santa', accent: 'South African Accent', rating: '99% positive reviews'),
                TutorCard(name: 'Lucy Hi', accent: 'Standard British Accent', rating: '100% positive reviews'),
                TutorCard(name: 'Daniel Garcia-Benitez', accent: 'British Accent', rating: '97% positive reviews'),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class TutorCard extends StatelessWidget {
  final String name;
  final String accent;
  final String rating;

  const TutorCard({super.key, required this.name, required this.accent, required this.rating});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>TutorProfileScreen2()));
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.grey[300]),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Row(
                        children: [
                          Icon(Icons.person, size: 16),
                          SizedBox(width: 5),
                          Text(accent),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.thumb_up, size: 16),
                          SizedBox(width: 5),
                          Text(rating),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.bookmark_border),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('ONLINE NOW', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Text("I'm a dedicated teacher with more than thirty years of experience..."),
            ],
          ),
        ),
      ),
    );
  }
}
