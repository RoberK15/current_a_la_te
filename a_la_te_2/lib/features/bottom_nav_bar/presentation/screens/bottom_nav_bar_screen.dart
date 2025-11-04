import 'package:a_la_te_2/features/bottom_nav_bar/application/cubit/bottom_nav_bar_cubit.dart';
import 'package:a_la_te_2/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:a_la_te_2/features/bottom_nav_bar/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({
    required this.child,
    required this.currentRouteLocation,
    super.key,
  });
  
  final String currentRouteLocation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    context.
      read<BottomNavBarCubit>()
      .updateCurrentRouteLocation(currentRouteLocation);

    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) => Scaffold(
        body: SafeArea(child: child),
        bottomNavigationBar: BottomNavBar(
          options: state.options,
          currentRouteIndex: state.currentRouteIndex,
        ),
      ),
    );
  }
}
