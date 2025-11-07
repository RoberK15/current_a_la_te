import 'package:current_a_la_te/core/routing/app_router.dart';
import 'package:current_a_la_te/features/bottom_nav_bar/application/cubit/bottom_nav_bar_cubit.dart';
import 'package:current_a_la_te/features/counter/application/cubit/counter_cubit.dart';
import 'package:current_a_la_te/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => BottomNavBarCubit()..init(),
        ),
        BlocProvider(
          create: (_) => CounterCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: goRouter,
      ),
    );
  }
}
