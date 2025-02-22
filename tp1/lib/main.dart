import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/media_screen.dart';
import 'screens/favorites_screen.dart'; // Import the FavoritesScreen
import 'screens/about_screen.dart';
import 'providers/favorites_provider.dart'; // Import the provider

void main() {
  runApp(MyGeekHubApp());
}

class MyGeekHubApp extends StatefulWidget {
  @override
  _MyGeekHubAppState createState() => _MyGeekHubAppState();
}

class _MyGeekHubAppState extends State<MyGeekHubApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    MediaScreen(),
    FavoritesScreen(), // Add the FavoritesScreen here
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyGeekHub',
        theme: ThemeData.dark(),
        home: Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: Colors
                .blueAccent, // Set background color for the BottomNavigationBar
            selectedItemColor: Colors.white, // Color of the selected item
            unselectedItemColor: Colors.grey, // Color of the unselected items
            selectedFontSize: 16, // Font size for the selected item
            unselectedFontSize: 14, // Font size for the unselected items
            showUnselectedLabels: true, // Show unselected labels
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: 'Media',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Liked',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About Us',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
