import 'package:flutter/material.dart';

class TransaksiTile extends StatelessWidget {
  const TransaksiTile({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Container(
        padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 56, 56, 157),
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          title: Text(title),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF4f4fda),
            ),
            child: const Text(
              'Rp.6.000.000.00',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          // trailing: const Icon(
          //   Icons.chevron_right,
          // ),
        ),
      ),
    );
  }
}
