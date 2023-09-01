import 'package:flutter/material.dart';
import 'package:lawlink_flutter/ui/home/community/community_screen.dart';
import 'package:lawlink_flutter/ui/home/incident/incident_screen.dart';
import 'package:lawlink_flutter/ui/home/setting/setting_screen.dart';
import 'package:lawlink_flutter/ui/home/subagent/subagent_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screenPageNo = <Widget>[
    CommunityScreen(),
    SubagentScreen(),
    IncidentScreen(),
    SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _screenPageNo.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.handshake), label: "복대리"),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy), label: "사건관리"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
        ],
      ),
    );
  }
}
