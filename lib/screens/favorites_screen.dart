import 'package:flutter/material.dart';
import 'package:itech/utils/InvoiceTile.dart';

class InvoiceApp extends StatelessWidget {
  const InvoiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InvoiceScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.cyan],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InvoiceSummary("Issued", 41),
                  InvoiceSummary("Paid", 27),
                  InvoiceSummary("Overdue", 3),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  Invoicetile("Nnenna Jioke", "Paid", "130 €", true, "today"),
                  Invoicetile("Mono GmbH", "Issued", "60 €", false, "today"),
                  Divider(),
                  Invoicetile(
                      "Lucy Miller", "Overdue", "120,50 €", true, "19. March"),
                  Invoicetile("Hangar 19", "Issued", "32 €", false, "19. March"),
                  Invoicetile(
                      "Trawell Ltd", "Issued", "85,50 €", false, "19. March"),
                  Invoicetile("Derek Ebss", "Issued", "75 €", false, "19. March"),
                  Divider(),
                  Invoicetile("Ibanez GmbH", "Paid", "100 €", true, "17. March"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InvoiceSummary extends StatelessWidget {
  final String label;
  final int count;

  const InvoiceSummary(this.label, this.count, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
