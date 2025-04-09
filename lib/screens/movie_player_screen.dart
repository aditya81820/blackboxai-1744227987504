import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:movie_watch_party/widgets/glass_card.dart';

class MoviePlayerScreen extends StatefulWidget {
  final String videoUrl;
  
  const MoviePlayerScreen({super.key, required this.videoUrl});

  @override
  State<MoviePlayerScreen> createState() => _MoviePlayerScreenState();
}

class _MoviePlayerScreenState extends State<MoviePlayerScreen> {
  late VideoPlayerController _controller;
  bool _isVideoChatExpanded = true;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Main Video Player
          Center(
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),

          // Video Chat Panel
          if (_isVideoChatExpanded)
            Positioned(
              right: 20,
              top: 20,
              bottom: 20,
              child: GlassCard(
                width: 200,
                child: Column(
                  children: [
                    const Text(
                      'Participants', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 6, // Max 6 participants
                        itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: index.isEven 
                              ? Colors.purpleAccent 
                              : Colors.blueAccent,
                            child: const Icon(Icons.person, color: Colors.white),
                          ),
                          title: Text(
                            'User ${index + 1}', 
                            style: const TextStyle(color: Colors.white)
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              index.isEven ? Icons.mic : Icons.mic_off,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // Bottom Controls
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: GlassCard(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat, color: Colors.white, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.emoji_emotions, color: Colors.white, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPlaying ? _controller.pause() : _controller.play();
                          _isPlaying = !_isPlaying;
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.fullscreen, color: Colors.white, size: 28),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        _isVideoChatExpanded 
                          ? Icons.arrow_forward_ios 
                          : Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        setState(() {
                          _isVideoChatExpanded = !_isVideoChatExpanded;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
