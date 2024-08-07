import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  final IconData icon;
  // const Menus({super.key, required this.icon});
  const Menus({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 56, 56, 157),
            borderRadius: BorderRadius.circular(13)),
        padding: const EdgeInsets.all(16),
        child: Center(child: Icon(icon, color: Colors.white, size: 30)));
  }
}
