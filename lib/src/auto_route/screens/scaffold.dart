// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookstoreScaffold extends StatefulWidget {
  const BookstoreScaffold({Key? key}) : super(key: key);

  @override
  State<BookstoreScaffold> createState() => _BookstoreScaffoldState();
}

class _BookstoreScaffoldState extends State<BookstoreScaffold> {
  int _selectedIndex = 0;
  late TabsRouter _tabsRouter;

  @override
  void dispose() {
    super.dispose();
    _tabsRouter.removeListener(_handleIndex);
  }

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    // final goRouter = GoRouter.of(context);

    return AutoTabsRouter(
      builder: (context, child) {
        _tabsRouter = AutoTabsRouter.of(context)..addListener(_handleIndex);
        return Scaffold(
          body: AdaptiveNavigationScaffold(
            selectedIndex: _selectedIndex,
            body: child,
            onDestinationSelected: (idx) {
              _selectedIndex = idx;
              if (idx == 0) router.navigateNamed('/books');
              if (idx == 1) router.navigateNamed("/authors");
              if (idx == 2) router.navigateNamed("/settings");
            },
            destinations: const [
              AdaptiveScaffoldDestination(title: 'Books', icon: Icons.book),
              AdaptiveScaffoldDestination(title: 'Authors', icon: Icons.person),
              AdaptiveScaffoldDestination(
                title: 'Settings',
                icon: Icons.settings,
              ),
            ],
          ),
        );
      },
    );
  }

  void _handleIndex() {
    _tabsRouter.setActiveIndex(_selectedIndex);
  }
}
