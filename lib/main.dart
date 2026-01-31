import 'package:flutter/material.dart';
import 'view/home_screen.dart';


void main() {
runApp(const OutfitApp());
}


class OutfitApp extends StatelessWidget {
const OutfitApp({super.key});


@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'What Should I Wear?',
theme: ThemeData(
brightness: Brightness.dark,
scaffoldBackgroundColor: const Color(0xFF0F0F14),
colorScheme: ColorScheme.fromSeed(
seedColor: Colors.pinkAccent,
brightness: Brightness.dark,
),
),
home: const HomeScreen(),
);
}
}