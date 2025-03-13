// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../../data.dart';
import '../app_auto_route.gr.dart';

@RoutePage()
class BookDetailsScreen extends StatelessWidget {
  final String? bookId;
  final Book? _book;

  BookDetailsScreen({super.key, @PathParam('id') this.bookId})
    : _book = libraryInstance.getBook(bookId!);

  @override
  Widget build(BuildContext context) {
    if (bookId == null || _book == null) {
      return const Scaffold(body: Center(child: Text('No book found.')));
    }
    return Scaffold(
      appBar: AppBar(title: Text(_book.title)),
      body: Center(
        child: Column(
          children: [
            Text(
              _book.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _book.author.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextButton(
              child: const Text('View author (Push)'),
              onPressed: () {
                context.router.navigate(
                  AuthorDetailsRoute(
                    author: _book.author,
                    onBookTapped: (book) {
                      context.router.navigateNamed('/book-details/${book.id}');
                    },
                  ),
                );
              },
            ),
            Link(
              uri: Uri.parse('/authors/author/${_book.author.id}'),
              builder:
                  (context, followLink) => TextButton(
                    onPressed: followLink,
                    child: const Text('View author (Link)'),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
