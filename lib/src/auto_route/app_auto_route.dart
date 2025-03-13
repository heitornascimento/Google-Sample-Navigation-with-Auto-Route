import 'package:auto_route/auto_route.dart';
import 'package:bookstore/src/screens/authors.dart';

import 'app_auto_route.gr.dart';

@AutoRouterConfig(generateForDir: ['lib/src'])
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: BookstoreScaffold.page,
      initial: true,
      children: [
        AutoRoute(
          path: 'books',
          page: BooksRoute.page,
          children: [
            AutoRoute(path: 'popular', page: BookTab.page),
            AutoRoute(path: 'new', page: BookTab.page),
            AutoRoute(path: 'authors', page: BookTab.page),
          ],
        ),
        AutoRoute(
          path: 'authors',
          page: PageInfo(
            "name",
            builder: (data) {
              return AuthorsScreen(onTap: (author) {});
            },
          ),
        ),
        AutoRoute(path: 'settings', page: SettingsRoute.page),
      ],
    ),
    AutoRoute(path: '/book-detail/:id',page: BookDetailsRoute.page),
    AutoRoute(page: AuthorDetailsRoute.page),
  ];
}
