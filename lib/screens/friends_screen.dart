import 'package:flutter/material.dart';
import 'package:movie_watch_party/widgets/glass_card.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          // Left Sidebar (consistent with dashboard)
          const GlassCard(
            width: 80,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.purpleAccent),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.people, color: Colors.blueAccent),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.video_library, color: Colors.purpleAccent),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.blueAccent),
                  onPressed: null,
                ),
              ],
            ),
          ),

          // Main Content Area
          Expanded(
            child: Column(
              children: [
                // Search Bar
                GlassCard(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search friends...',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.search, color: Colors.purpleAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.3),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Friends List
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 20,
                    itemBuilder: (context, index) => GlassCard(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: index.isEven 
                            ? Colors.purpleAccent 
                            : Colors.blueAccent,
                          child: const Icon(Icons.person, color: Colors.white),
                        ),
                        title: Text(
                          'Friend ${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Text(
                          index.isEven ? 'Online' : 'Offline',
                          style: TextStyle(
                            color: index.isEven 
                              ? Colors.greenAccent 
                              : Colors.grey,
                          ),
                        ),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: index.isEven
                              ? Colors.purpleAccent
                              : Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            index.isEven ? 'Invite' : 'Add',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
