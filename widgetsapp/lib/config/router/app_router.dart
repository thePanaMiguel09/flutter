import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetsapp/presentation/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CardScreen();
      },
    ),
  ],
);
