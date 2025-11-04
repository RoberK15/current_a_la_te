
import 'package:a_la_te_2/features/bottom_nav_bar/application/cubit/bottom_nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState>{
  BottomNavBarCubit() : super(const BottomNavBarState());

  Future<void> init() async {

    emit(
      state.copyWith(
        options: [
          BottomNavBarOptionModel(
            name: 'Inicio',
            icon:  Icons.home,
            routeLocation: '/',
            routeName: 'home',
          ),
          BottomNavBarOptionModel(
            name: 'Example',
            icon:  Icons.list,
            routeLocation: '/examplesList',
            routeName: 'examplesList',
          ),
        ],
      ),
    );
  }

  void updateCurrentRouteLocation(String routeLocation) {
    emit(
      state.copyWith(
        currentRouteIndex: state.options.indexWhere((option) => 
        option.routeLocation == routeLocation),
      ),
    );
  }
}
