import 'package:flutter/material.dart';
import 'package:movie_watch_party/widgets/glass_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          // Left Sidebar
          GlassCard(
            width: 80,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.purpleAccent),
                  onPressed: () => Navigator.pushReplacementNamed(context, '/dashboard'),
                ),
                IconButton(
                  icon: const Icon(Icons.people, color: Colors.blueAccent),
                  onPressed: () => Navigator.pushNamed(context, '/friends'),
                ),
                IconButton(
                  icon: const Icon(Icons.video_library, color: Colors.purpleAccent),
                  onPressed: () => Navigator.pushNamed(context, '/party'),
                ),
                IconButton(
                  icon: const Icon(Icons.person, color: Colors.blueAccent),
                  onPressed: () => Navigator.pushNamed(context, '/settings'),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Column(
              children: [
                // Create/Join Party Section
                GlassCard(
                  child: Column(
                    children: [
                      Text(
                        'Start a Watch Party',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Create Party'),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Join Party'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Right Panel
          GlassCard(
            width: 200,
            child: Column(
              children: [
                Text(
                  'Recent Uploads',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                // Google Drive files list will go here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
