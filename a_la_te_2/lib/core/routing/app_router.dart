import 'package:a_la_te_2/features/bottom_nav_bar/presentation/screens/bottom_nav_bar_screen.dart';
import 'package:a_la_te_2/features/counter/presentation/screens/counter_screen.dart';
import 'package:a_la_te_2/features/example/domain/models/example.dart';
import 'package:a_la_te_2/features/example/presentation/example_details/screens/example_details_screen.dart';
import 'package:a_la_te_2/features/example/presentation/examples_list/screens/examples_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home('/'),

  //EXAMPLES
  examplesList('/examplesList'),
  exampleDetail('exampleDetail');

  const AppRoute(this.path);
  final String path;
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = 
GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: BottomNavBarScreen(
            currentRouteLocation: state.matchedLocation,
            child: child,
          ),
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: AppRoute.home.path,
          name: AppRoute.home.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: CounterScreen(),
          ),
        ),
        GoRoute(
          path: AppRoute.examplesList.path,
          name: AppRoute.examplesList.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ExamplesListScreen(),
          ),
          routes: [
            GoRoute(
              path: AppRoute.exampleDetail.path,
              name: AppRoute.exampleDetail.name,
              builder: (context, state) {
                return ExampleDetailsScreen(
                  example: state.extra as Example,
                  );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
