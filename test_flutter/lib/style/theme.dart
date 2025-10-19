import 'package:flutter/material.dart';

final customTheme =  ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  ),
);