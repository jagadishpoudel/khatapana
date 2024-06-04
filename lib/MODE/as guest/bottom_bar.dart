import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khatapana/MODE/as%20guest/guest_setting.dart';
import 'package:khatapana/MODE/as%20guest/pages/bottombar_pages/guest_explore_page.dart';
import 'package:khatapana/MODE/as%20guest/pages/bottombar_pages/guest_home_page.dart';
import 'package:khatapana/MODE/as%20guest/pages/bottombar_pages/guest_user_page.dart';

class GuestBottomBar extends StatefulWidget {
  const GuestBottomBar({Key? key}) : super(key: key);

  @override
  State<GuestBottomBar> createState() => _GuestBottomBarState();
}

class _GuestBottomBarState extends State<GuestBottomBar> {
  int _currentIndex = 1;

  final List<Widget> _pages = [
    const GuestHomePage(),
    const GuestExplorePage(),
    const GuestUserPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            SvgPicture.network(
              "https://khatapana.com/assets/img/pricing/khatapana-standard.svg",
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "EXPLORE",
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => GuestSetting()));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "You",
          )
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
