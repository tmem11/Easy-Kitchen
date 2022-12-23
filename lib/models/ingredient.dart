import 'package:flutter/material.dart';

class Ingredient {
  final String id;
  final String title;
  final String imageUrl;
  // final Color color;

  const Ingredient({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
  });
}
