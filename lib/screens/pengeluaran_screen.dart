import 'package:flutter/material.dart';
import 'package:itech/models/pengeluaran.dart';

class PengeluaranScreen extends StatefulWidget {
  const PengeluaranScreen({super.key});

  @override
  State<PengeluaranScreen> createState() => _PengeluaranScreenState();
}

class _PengeluaranScreenState extends State<PengeluaranScreen> {
  late Future<List<Pengeluaran>> pengeluaranFuture;

  @override
  void initState() {
    super.initState();
    pengeluaranFuture = Pengeluaran.getPengeluaran();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder<List<Pengeluaran>>(
        future: pengeluaranFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada data pemasukan'));
          } else {
            // Menampilkan ListView jika data ada
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var pengeluaran = snapshot.data![index];
                return ListTile(
                  title:
                      Text(pengeluaran.deskripsi ?? 'Deskripsi tidak tersedia'),
                  subtitle: Text('Nominal: ${pengeluaran.nominal}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
