// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../data.dart';
import '../app_auto_route.gr.dart';

@RoutePage()
class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TabsRouter _tabsRouter;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        BookTab(
          books: libraryInstance.popularBooks,
          onTap: (book) => context.router.pushNamed('/book-detail/${book.id}'),
        ),
        BookTab(
          books: libraryInstance.newBooks,
          onTap: (book) => context.router.pushNamed('/book-detail/${book.id}'),
        ),
        BookTab(
          books: libraryInstance.allBooks,
          onTap: (book) => context.router.pushNamed('/book-detail/${book.id}'),
        ),
      ],
      builder: (context, child, controller) {
        _tabsRouter = context.tabsRouter;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Books'),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Popular', icon: Icon(Icons.people)),
                Tab(text: 'New', icon: Icon(Icons.new_releases)),
                Tab(text: 'All', icon: Icon(Icons.list)),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }

  void _handleTabIndexChanged() {
    _tabsRouter.setActiveIndex(_tabController.index);
  }
}
