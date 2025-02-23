import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/media_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/about_screen.dart';
import 'providers/favorites_provider.dart';

void main() {
  runApp(MyGeekHubApp());
}

// ignore: use_key_in_widget_constructors
class MyGeekHubApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyGeekHubAppState createState() => _MyGeekHubAppState();
}

class _MyGeekHubAppState extends State<MyGeekHubApp> {
  int _currentIndex = 0;
  //Liste des différents éléments de la bar de navigation en bas
  final List<Widget> _screens = [
    HomeScreen(),
    MediaScreen(),
    FavoritesScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyGeekHub',
        theme: ThemeData.dark().copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        home: Scaffold(
          body: IndexedStack(
            index: _currentIndex,
            children: _screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                label: 'Medias',
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
