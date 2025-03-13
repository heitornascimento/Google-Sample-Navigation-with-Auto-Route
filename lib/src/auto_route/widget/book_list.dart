// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../data.dart';


//Tab

@RoutePage(name: 'BookTab')
class BookList extends StatelessWidget {
  final List<Book> books;
  final ValueChanged<Book>? onTap;

  const BookList({required this.books, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder:
          (context, index) => ListTile(
        title: Text(books[index].title),
        subtitle: Text(books[index].author.name),
        onTap: onTap != null ? () => onTap!(books[index]) : null,
      ),
    );
  }
}
