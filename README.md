
Built by https://www.blackbox.ai

---

```markdown
# Movie Watch Party

A futuristic movie watch party platform that allows users to connect, watch movies together, and enjoy a shared viewing experience. The app leverages the power of Firebase and WebRTC to provide a seamless interaction between users.

## Project Overview

The Movie Watch Party application is designed to create an interactive and engaging environment for users to watch movies together in real-time. With features like Google sign-in, video playback, and chat capabilities, this platform offers a unique social experience to movie enthusiasts.

## Installation

To begin using the Movie Watch Party app, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/movie_watch_party.git
   ```
   
2. **Navigate to the project directory**:
   ```bash
   cd movie_watch_party
   ```

3. **Install Flutter**: Make sure you have Flutter installed on your machine. If you haven’t installed it yet, you can download it from [Flutter's official website](https://flutter.dev/docs/get-started/install).

4. **Get the dependencies**:
   ```bash
   flutter pub get
   ```

5. **Run the app**:
   ```bash
   flutter run
   ```

## Usage

After installing the app, open it on your preferred device (mobile or emulator). Sign in with your Google account to start the experience. You can create or join watch parties, browse available movies, and initiate playback with your friends.

## Features

- **User Authentication**: Sign in with Google for easy access.
- **Watch Parties**: Create or join parties to invite friends and enjoy movies together.
- **Real-time Communication**: Use WebRTC to communicate with others in the watch party.
- **Video Playback**: Support for in-app video playback with synchronization across users.
- **Chat Functionality**: Communicate with participants during the movie.
- **Dynamic UI**: Engaging user interface with animations and glassmorphism design.

## Dependencies

This project uses the following dependencies as specified in the `pubspec.yaml` file:

- `flutter`: Flutter SDK
- `google_sign_in`: For Google sign-in functionality
- `firebase_core`: Core Firebase services
- `firebase_auth`: Authentication with Firebase
- `cloud_firestore`: Cloud Firestore database
- `firebase_storage`: Cloud Storage for Firebase
- `googleapis`: Google APIs for accessing various services
- `googleapis_auth`: Authentication support for Google APIs
- `video_player`: Plugin for playing video content
- `webrtc_interface`: Interface for WebRTC functionality
- `flutter_webrtc`: Flutter wrapper for WebRTC
- `cached_network_image`: For caching images from the network
- `shimmer`: For adding shimmer effects to the UI
- `glassmorphism`: For implementing glassmorphism effects in the UI
- `animations`: A package to add pre-built animations

### Dev Dependencies

- `flutter_test`: For testing the Flutter app
- `flutter_lints`: A set of lint rules for improving code quality

## Project Structure

Here is a brief overview of the project structure:

```
movie_watch_party/
├── assets/
│   ├── images/            # Image assets
│   └── animations/        # Animation assets
├── lib/                   # Dart source files
│   ├── main.dart          # Main application entry point
│   └── ...                # Other necessary Dart files for functionality
├── pubspec.yaml           # Project configuration and dependencies
└── ...                    # Other necessary files and folders
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or raise an issue to discuss any changes.
```