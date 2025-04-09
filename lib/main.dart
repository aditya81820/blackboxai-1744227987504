import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/movie_player_screen.dart';
import 'screens/friends_screen.dart';
import 'screens/party_lobby_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MovieWatchPartyApp());
}

class MovieWatchPartyApp extends StatelessWidget {
  const MovieWatchPartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Watch Party',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: Colors.purpleAccent,
          secondary: Colors.blueAccent,
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.zero,
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/movie': (context) => const MoviePlayerScreen(videoUrl: 'https://example.com/sample.mp4'),
        '/friends': (context) => const FriendsScreen(),
        '/party': (context) => const PartyLobbyScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
