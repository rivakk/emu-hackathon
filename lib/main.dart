import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'notifications.dart';
import 'guide.dart';
import 'profile.dart';
import 'add.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackathon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ExpiRo',
            style: TextStyle(
              fontFamily: "QuickSand",
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      
      // floatingActionButton: _buildFloatingActionButton(), // Add the FAB here
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Position the FAB in the center
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _items,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        
        ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          new MyHomeScreen(),
          const MyNotificationsScreen(),
          const MyAddScreen(),
          const MyGuideScreen(),
          const MyProfileScreen(),
          
        ],
        ),
      ),
    );
  }
}

// bottom navigation bar items
final List<BottomNavigationBarItem> _items = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.notifications),
    label: 'Notifications',
  ),
  BottomNavigationBarItem(
    icon: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(150, 171, 176, 180),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Icon(Icons.add),
    ),
    label: 'Add',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.map),
    label: 'Guide',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
  
];

