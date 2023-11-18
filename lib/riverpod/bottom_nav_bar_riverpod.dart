import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personaltrainer/functions/duygu_nav.dart';
import 'package:personaltrainer/screens/main_screen.dart';
import 'package:personaltrainer/screens/profile_page_screen.dart';
import 'package:personaltrainer/screens/user_profile_page.dart';

class BottomNavBarRiverpod extends ChangeNotifier {
  BuildContext? context;
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(
        CupertinoIcons.home,
        color: Colors.black54,
      ),
      label: "Anasayfa",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CupertinoIcons.cart,
        color: Colors.black54,
      ),
      label: "Sepetim",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CupertinoIcons.person,
        color: Colors.black54,
      ),
      label: "Profil",
    ),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  String appbarTitle() {
    switch (currentIndex) {
      case 1:
        return "Sepetim";
      case 2:
        return "Hesabım";
      case 0:
      default:
        return "Menü";
    }
  }

  Widget appbarIcon() {
    switch (currentIndex) {
      case 1:
        return const SizedBox();
      case 2:
        return IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            DuyguNav.push(const ProfilePAgeScreen());
          },
        );
      case 0:
      default:
        return IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            DuyguNav.push(const ProfilePAgeScreen());
          },
        );
    }
  }

  Widget body() {
    switch (currentIndex) {
      case 1:
        return const ProfilePAgeScreen();
      case 2:
        return const UserProfilePageScreen();
      case 0:
      default:
        return MainScreen();
    }
  }
}
