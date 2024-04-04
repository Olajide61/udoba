import 'package:flutter/material.dart';
import 'package:udoba_test/views/auths/pages/content_page.dart';
import 'package:udoba_test/views/auths/pages/feed_page.dart';
import 'package:udoba_test/views/auths/pages/message_page.dart';
import 'package:udoba_test/views/auths/pages/market_page.dart';
import 'package:udoba_test/views/auths/pages/user_page.dart';
import 'package:udoba_test/views/widgets/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    const FeedPage(),
    const ContentPage(),
    const MarketPage(),
    const UserPage(),
    const MessagePage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
              fontSize: 12.8, fontFamily: 'inter', fontWeight: FontWeight.w400),
          selectedLabelStyle: const TextStyle(
              fontSize: 12.8, fontFamily: 'inter', fontWeight: FontWeight.w400),
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.whitish,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/ball.png',
                color: AppColors.primary,
                width: 34,
                height: 34,
              ),
              icon: Image(
                color: AppColors.whitish,
                height: 32,
                width: 32,
                image: const AssetImage(
                  'assets/images/ball.png',
                ),
              ),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/ball.png',
                color: AppColors.primary,
                width: 34,
                height: 34,
              ),
              icon: Image(
                color: AppColors.whitish,
                height: 32,
                width: 32,
                image: const AssetImage(
                  'assets/images/ball.png',
                ),
              ),
              label: 'Content',
            ),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/ball.png',
                  color: AppColors.primary,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/ball.png',
                  ),
                ),
                label: 'Market'),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/ball.png',
                  color: AppColors.primary,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/ball.png',
                  ),
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/ball.png',
                  color: AppColors.primary,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/ball.png',
                  ),
                ),
                label: 'Messages'),
          ],
        ),
        body: pages[_selectedIndex]);
  }
}
