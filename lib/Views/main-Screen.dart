import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'homePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages here
    const HomePage(),
    const Text('Page 2'),
    const Text('Page 3'),
    const Text('Page 4'),
  ];
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            [
              const HomePage(),
              const Center(child: Text('Communities')),
              const Center(child: Text('chat')),
              const Center(child: Text('Profile'))
            ][_selectedIndex],
          ],
        ),
        // bottomNavigationBar: CustomBottomNavigationBar(
        //     onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
        bottomNavigationBar: Container(
          // padding: const EdgeInsets.only(left: 60, right: 60, bottom: 20),
          color: Colors.red,
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.black,
              unselectedItemColor: const Color(0xffAEAEB2),
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.41),
              unselectedLabelStyle: const TextStyle(
                  color: Color(0xffAEAEB2),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.41),
              items: [
                (_selectedIndex == 0)
                    ? const BottomNavigationBarItem(
                        icon: Icon(
                          // LineIcons.home,
                          // color: Color(0xffB0B0B0)
                          FeatherIcons.home,
                          color: Colors.black,
                        ),
                        label: 'Home')
                    : const BottomNavigationBarItem(
                        icon: Icon(FeatherIcons.home, color: Color(0xffAEAEB2)),
                        label: 'Home'),
                (_selectedIndex == 1)
                    ? const BottomNavigationBarItem(
                        icon: Icon(
                            // FontAwesomeIcons.peopleGroup,
                            FeatherIcons.users,
                            color: Colors.black),
                        label: 'Communities')
                    : const BottomNavigationBarItem(
                        icon:
                            Icon(FeatherIcons.users, color: Color(0xffAEAEB2)),
                        label: 'Communities'),
                (_selectedIndex == 2)
                    ? const BottomNavigationBarItem(
                        icon: Icon(FeatherIcons.send, color: Colors.black),
                        label: 'Chat')
                    : const BottomNavigationBarItem(
                        icon: Icon(FeatherIcons.send, color: Color(0xffAEAEB2)),
                        label: 'Chat'),
                (_selectedIndex == 3)
                    ? const BottomNavigationBarItem(
                        icon: Icon(FeatherIcons.user, color: Color(0xffB0B0B0)),
                        label: 'Profile')
                    : const BottomNavigationBarItem(
                        icon: Icon(FeatherIcons.user, color: Color(0xffAEAEB2)),
                        label: 'Profile'),
              ],
            ),
          ),
        ));
    /* return Scaffold(
      /* appBar: AppBar(
        title: const Text('Bottom Navigation Bar Example'),
      ),*/
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.transparent,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xffAEAEB2),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Moements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  */
  }
}
