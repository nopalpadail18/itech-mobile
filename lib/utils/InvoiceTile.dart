import'package:flutter/material.dart';

class Invoicetile extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  final bool isPaid;
  final String date;

  const Invoicetile(this.name, this.status, this.amount, this.isPaid, this.date,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person, size: 48),
      title: Text(name),
      subtitle: Text(
        status,
        style: TextStyle(color: isPaid ? Colors.green : Colors.grey),
      ),
      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
