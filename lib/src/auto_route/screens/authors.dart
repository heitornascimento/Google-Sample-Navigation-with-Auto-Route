// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../data.dart';
import '../../widgets/author_list.dart';
import '../app_auto_route.gr.dart';

@RoutePage()
class AuthorsScreen extends StatelessWidget {
  final String title;
  final ValueChanged<Author> onTap;

  const AuthorsScreen({required this.onTap, this.title = 'Authors', super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: AuthorList(
      authors: libraryInstance.allAuthors,
      onTap: (author) {
        context.router.push(
          AuthorDetailsRoute(
            author: author,
            onBookTapped: (book) {
              ///Otherwise, the stack will be filled with the same route.
              ///doc:
              // pops until provided route, if it already exists in stack
              context.router.navigateNamed('/book-details/${book.id}');
            },
          ),
        );
      },
    ),
  );
}
