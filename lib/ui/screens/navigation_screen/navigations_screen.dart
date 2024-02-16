import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_app_phone/ui/screens/home_screen/home_page.dart';
import 'package:test_app_phone/ui/theme/app_colors.dart';
import 'package:test_app_phone/ui/theme/app_fonts.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        screens: screens,
        items: navBarItems,
        navBarStyle: NavBarStyle.style7,
        navBarHeight: 70,
        backgroundColor: AppColors.containerBgColor,
        padding: const NavBarPadding.symmetric(horizontal: 8),
      ),
    );
  }

  List<Widget> screens = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  List<PersistentBottomNavBarItem> navBarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home_outlined),
      title: 'Home',
      textStyle: AppFonts.s16w700,
      activeColorPrimary: AppColors.selectedColor,
      activeColorSecondary: const Color(0xff29364E),
      inactiveColorPrimary: const Color(0xff8693A3),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.phone_android),
      title: 'Calls',
      textStyle: AppFonts.s16w700,
      activeColorPrimary: AppColors.selectedColor,
      activeColorSecondary: const Color(0xff29364E),
      inactiveColorPrimary: const Color(0xff8693A3),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.message_rounded),
      title: 'Messages',
      textStyle: AppFonts.s16w700,
      activeColorPrimary: AppColors.selectedColor,
      activeColorSecondary: const Color(0xff29364E),
      inactiveColorPrimary: const Color(0xff8693A3),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person_4_outlined),
      title: 'Contacts',
      textStyle: AppFonts.s16w700,
      activeColorPrimary: AppColors.selectedColor,
      activeColorSecondary: const Color(0xff29364E),
      inactiveColorPrimary: const Color(0xff8693A3),
    ),
  ];
}
