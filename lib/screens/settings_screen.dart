import 'package:flutter/material.dart';
import 'package:movie_watch_party/widgets/glass_card.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = true;
  bool _notificationsEnabled = true;
  bool _cameraEnabled = true;
  bool _microphoneEnabled = true;
  double _volumeLevel = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          // Left Sidebar (consistent navigation)
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
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const GlassCard(
                  child: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),

                // Theme Settings
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'THEME',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Dark Mode',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _darkMode,
                        onChanged: (value) {
                          setState(() {
                            _darkMode = value;
                          });
                        },
                        activeColor: Colors.purpleAccent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Notification Settings
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'NOTIFICATIONS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Enable Notifications',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _notificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            _notificationsEnabled = value;
                          });
                        },
                        activeColor: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Audio/Video Settings
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'AUDIO/VIDEO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Enable Camera',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _cameraEnabled,
                        onChanged: (value) {
                          setState(() {
                            _cameraEnabled = value;
                          });
                        },
                        activeColor: Colors.purpleAccent,
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Enable Microphone',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _microphoneEnabled,
                        onChanged: (value) {
                          setState(() {
                            _microphoneEnabled = value;
                          });
                        },
                        activeColor: Colors.blueAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Volume Level',
                              style: TextStyle(color: Colors.white),
                            ),
                            Slider(
                              value: _volumeLevel,
                              onChanged: (value) {
                                setState(() {
                                  _volumeLevel = value;
                                });
                              },
                              activeColor: Colors.purpleAccent,
                              inactiveColor: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Account Settings
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ACCOUNT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.sync, color: Colors.white),
                        title: const Text(
                          'Sync Account',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.white),
                        title: const Text(
                          'Sign Out',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                    ],
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
