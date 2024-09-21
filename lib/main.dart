import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:funapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fun App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: FunApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FunApp extends StatefulWidget {
  const FunApp({super.key});

  @override
  State<FunApp> createState() => _FunAppState();
}

class _FunAppState extends State<FunApp> {
  int _selectedIndex = 0;

  final List<Widget> _tabOptions = [
    Home(),
    Search(),
    Friends(),
    Messages(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabOptions[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            height: 70,
            width: MediaQuery.of(context).size.width - 20,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: CustomNavigationBar(
              elevation: 1,
              iconSize: 50.0,
              selectedColor: Colors.white,
              strokeColor: Colors.pink,
              bubbleCurve: Curves.bounceInOut,
              unSelectedColor: Colors.pink,
              backgroundColor: Colors.white,
              isFloating: true,
              borderRadius: Radius.circular(43),
              items: [
                CustomNavigationBarItem(
                  icon: Center(
                    child: CircleAvatar(
                      backgroundColor:
                          _selectedIndex == 0 ? Colors.pink : Colors.white,
                      child: ImageIcon(
                        AssetImage("assets/icons/home.png"),
                        color: _selectedIndex == 0 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ),
                CustomNavigationBarItem(
                  icon: Center(
                    child: CircleAvatar(
                      backgroundColor:
                          _selectedIndex == 1 ? Colors.pink : Colors.white,
                      child: ImageIcon(
                        AssetImage("assets/icons/compass.png"),
                        color: _selectedIndex == 1 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ),
                CustomNavigationBarItem(
                  icon: Center(
                    child: CircleAvatar(
                      backgroundColor:
                          _selectedIndex == 2 ? Colors.pink : Colors.white,
                      child: ImageIcon(
                        AssetImage("assets/icons/user.png"),
                        color: _selectedIndex == 2 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ),
                CustomNavigationBarItem(
                  icon: Center(
                    child: CircleAvatar(
                      backgroundColor:
                          _selectedIndex == 3 ? Colors.pink : Colors.white,
                      child: ImageIcon(
                        size: 25,
                        AssetImage("assets/icons/chat.png"),
                        color: _selectedIndex == 3 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ),
                CustomNavigationBarItem(
                  icon: Center(
                    child: CircleAvatar(
                      backgroundColor:
                          _selectedIndex == 4 ? Colors.pink : Colors.white,
                      child: Icon(
                        Icons.settings_outlined,
                        color: _selectedIndex == 4 ? Colors.white : Colors.pink,
                      ),
                    ),
                  ),
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search Page"));
  }
}

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Friends Page"));
  }
}

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Messages Page"));
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Settings Page"));
  }
}
