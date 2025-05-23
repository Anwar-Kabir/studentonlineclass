import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
 

 import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TutorProfileScreen2 extends StatefulWidget {
  const TutorProfileScreen2({super.key});

  @override
  _TutorProfileScreen2State createState() => _TutorProfileScreen2State();
}

class _TutorProfileScreen2State extends State<TutorProfileScreen2> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://www.example.com/sample_video.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stack with fixed height wrapped in SizedBox
              SizedBox(
                height: 250, // Fixed height for the video player
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _controller.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : Container(height: 100, color: Colors.black12),
                    IconButton(
                      icon: Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 200,
                  child: Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Laura Paisley",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.language, color: Colors.grey),
                          SizedBox(width: 8),
                          Text("North American Accent"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.thumb_up, color: Colors.grey),
                          SizedBox(width: 8),
                          Text("99% positive reviews"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.translate, color: Colors.grey),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text("Speaks: English (Native), Spanish (Basic), Portuguese (Basic)"),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Hello! I write for a living and love to travel. I am a book author and copywriter with decades of sales & marketing experience. My writing business helps entrepreneurs and small businesses tell their story and attract their desired clients. I also teach writing workshops to help people overcome their inner critic and embrace their creativity. I am very expressive when I talk and I smile a lot, so expect to have a lot of fun in our conversations.",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/profile.jpg'),
                                  radius: 25,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Laura Paisley", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text("online", style: TextStyle(color: Colors.green)),
                                  ],
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              child: Text("Call", style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
