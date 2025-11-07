import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_bar_state.freezed.dart';

class BottomNavBarOptionModel {
  BottomNavBarOptionModel({
    required this.name,
    required this.icon,
    required this.routeLocation,
    required this.routeName,
  });

  final String name;
  final String routeLocation;
  final IconData icon;
  final String routeName;
}

@freezed
abstract class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    @Default([]) List<BottomNavBarOptionModel> options,
    @Default(0) int currentRouteIndex,
  }) = _BottomNavBarState;
}
