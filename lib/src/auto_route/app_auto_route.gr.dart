// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:bookstore/src/auto_route/screens/authors.dart' as _i2;
import 'package:bookstore/src/auto_route/screens/autor_details.dart' as _i1;
import 'package:bookstore/src/auto_route/screens/book_details.dart' as _i3;
import 'package:bookstore/src/auto_route/screens/books.dart' as _i5;
import 'package:bookstore/src/auto_route/screens/scaffold.dart' as _i6;
import 'package:bookstore/src/auto_route/screens/settings.dart' as _i7;
import 'package:bookstore/src/auto_route/widget/book_list.dart' as _i4;
import 'package:bookstore/src/data.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AuthorDetailsScreen]
class AuthorDetailsRoute extends _i8.PageRouteInfo<AuthorDetailsRouteArgs> {
  AuthorDetailsRoute({
    _i9.Key? key,
    required _i10.Author author,
    required _i9.ValueChanged<_i10.Book> onBookTapped,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         AuthorDetailsRoute.name,
         args: AuthorDetailsRouteArgs(
           key: key,
           author: author,
           onBookTapped: onBookTapped,
         ),
         initialChildren: children,
       );

  static const String name = 'AuthorDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthorDetailsRouteArgs>();
      return _i1.AuthorDetailsScreen(
        key: args.key,
        author: args.author,
        onBookTapped: args.onBookTapped,
      );
    },
  );
}

class AuthorDetailsRouteArgs {
  const AuthorDetailsRouteArgs({
    this.key,
    required this.author,
    required this.onBookTapped,
  });

  final _i9.Key? key;

  final _i10.Author author;

  final _i9.ValueChanged<_i10.Book> onBookTapped;

  @override
  String toString() {
    return 'AuthorDetailsRouteArgs{key: $key, author: $author, onBookTapped: $onBookTapped}';
  }
}

/// generated route for
/// [_i2.AuthorsScreen]
class AuthorsRoute extends _i8.PageRouteInfo<AuthorsRouteArgs> {
  AuthorsRoute({
    required _i9.ValueChanged<_i10.Author> onTap,
    String title = 'Authors',
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         AuthorsRoute.name,
         args: AuthorsRouteArgs(onTap: onTap, title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'AuthorsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthorsRouteArgs>();
      return _i2.AuthorsScreen(
        onTap: args.onTap,
        title: args.title,
        key: args.key,
      );
    },
  );
}

class AuthorsRouteArgs {
  const AuthorsRouteArgs({
    required this.onTap,
    this.title = 'Authors',
    this.key,
  });

  final _i9.ValueChanged<_i10.Author> onTap;

  final String title;

  final _i9.Key? key;

  @override
  String toString() {
    return 'AuthorsRouteArgs{onTap: $onTap, title: $title, key: $key}';
  }
}

/// generated route for
/// [_i3.BookDetailsScreen]
class BookDetailsRoute extends _i8.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    _i9.Key? key,
    String? bookId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         BookDetailsRoute.name,
         args: BookDetailsRouteArgs(key: key, bookId: bookId),
         rawPathParams: {'id': bookId},
         initialChildren: children,
       );

  static const String name = 'BookDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BookDetailsRouteArgs>(
        orElse: () => BookDetailsRouteArgs(bookId: pathParams.optString('id')),
      );
      return _i3.BookDetailsScreen(key: args.key, bookId: args.bookId);
    },
  );
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.key, this.bookId});

  final _i9.Key? key;

  final String? bookId;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i4.BookList]
class BookTab extends _i8.PageRouteInfo<BookTabArgs> {
  BookTab({
    required List<_i10.Book> books,
    _i9.ValueChanged<_i10.Book>? onTap,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         BookTab.name,
         args: BookTabArgs(books: books, onTap: onTap, key: key),
         initialChildren: children,
       );

  static const String name = 'BookTab';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookTabArgs>();
      return _i4.BookList(books: args.books, onTap: args.onTap, key: args.key);
    },
  );
}

class BookTabArgs {
  const BookTabArgs({required this.books, this.onTap, this.key});

  final List<_i10.Book> books;

  final _i9.ValueChanged<_i10.Book>? onTap;

  final _i9.Key? key;

  @override
  String toString() {
    return 'BookTabArgs{books: $books, onTap: $onTap, key: $key}';
  }
}

/// generated route for
/// [_i5.BooksScreen]
class BooksRoute extends _i8.PageRouteInfo<void> {
  const BooksRoute({List<_i8.PageRouteInfo>? children})
    : super(BooksRoute.name, initialChildren: children);

  static const String name = 'BooksRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.BooksScreen();
    },
  );
}

/// generated route for
/// [_i6.BookstoreScaffold]
class BookstoreScaffold extends _i8.PageRouteInfo<void> {
  const BookstoreScaffold({List<_i8.PageRouteInfo>? children})
    : super(BookstoreScaffold.name, initialChildren: children);

  static const String name = 'BookstoreScaffold';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.BookstoreScaffold();
    },
  );
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SettingsScreen();
    },
  );
}
