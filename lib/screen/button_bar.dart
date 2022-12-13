
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screen/home_screen.dart';
import 'package:ticket/screen/search_screen.dart';
import 'package:ticket/screen/tickets.dart';
class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
    int _pageIndex = 0;
  static final List<Widget> _pages =<Widget> [
    const Home(),
    const Search(),
    const Tickets(),
    const Text("Profile"),
  ];
  void _itemTap(int index){
   setState(() {
     _pageIndex = index;
   });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: _pages[_pageIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _itemTap,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor:  const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home",),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
