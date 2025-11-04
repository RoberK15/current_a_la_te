import 'package:a_la_te_2/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.options,
    required this.currentRouteIndex,
    super.key,
  });
  
  final List<BottomNavBarOptionModel> options;
  final int currentRouteIndex;

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: currentRouteIndex >= 0 ? currentRouteIndex : 0,
      items: List.generate(
        options.length,
        (index) => _buildNavItem(
          icon: options[index].icon,
          label: options[index].name,
        ),
      ),
      onTap: (index) {
        context.goNamed(options[index].routeName);
      },
    );
  }

  BottomNavigationBarItem _buildNavItem(
    {
    required IconData icon,
    required String label,
    }
  ) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}