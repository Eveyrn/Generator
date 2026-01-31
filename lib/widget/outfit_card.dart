import 'package:flutter/material.dart';


class OutfitCard extends StatelessWidget {
final String title;
final String value;


const OutfitCard({
super.key,
required this.title,
required this.value,
});


@override
Widget build(BuildContext context) {
return Container(
width: double.infinity,
margin: const EdgeInsets.only(bottom: 12),
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: const Color(0xFF1B1B24),
borderRadius: BorderRadius.circular(20),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
title,
style: const TextStyle(color: Colors.white54),
),
const SizedBox(height: 6),
Text(
value,
style: const TextStyle(
fontSize: 18,
fontWeight: FontWeight.w600,
),
),
],
),
);
}
}