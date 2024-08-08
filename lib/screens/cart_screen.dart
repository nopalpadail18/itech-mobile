import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itech/screens/home_screen.dart';
import 'package:itech/screens/naviation_screen.dart';
import 'package:itech/utils/transaksi_tile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4f4fda),
      body: SafeArea(
        child: Column(
          children: [
            // back button
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
              child: Container(
                height: MediaQuery.of(context).size.height * 7 / 100,
                width: MediaQuery.of(context).size.width * 90 / 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 56, 56, 157),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationScreen()));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Detail Transaksi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.more_vert, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // total transaksi
            Container(
              height: MediaQuery.of(context).size.height * 21 / 100,
              width: MediaQuery.of(context).size.width * 90 / 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 56, 157),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Transaksi Di Tahun 2024",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 5),

                    // jumlah rupiah
                    Text(
                      "Rp. 15.000.000.00",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),

                    SizedBox(height: 15),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pengeluaran",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Icon(Icons.chevron_left, color: Colors.white),
                            // const Spacer(),
                            Text(
                              "Rp. 15.000.000.00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pemasukan",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Icon(Icons.chevron_right_outlined,
                                color: Colors.white),
                            Text(
                              "Rp. 15.000.000.00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[100],
                  child: Center(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'List Bulan Transaksi',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Color(0xFF4f4fda),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        // list bulan transaksi

                        Expanded(
                            child: ListView(
                          children: const [
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Januari',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Februari',
                            ),
                            TransaksiTile(
                              title: 'Maret',
                              icon: Icons.calendar_month,
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'April',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Mei',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Juni',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Juli',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Agustus',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'September',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Oktober',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'November',
                            ),
                            TransaksiTile(
                              icon: Icons.calendar_month,
                              title: 'Desember',
                            ),
                          ],
                        ))
                      ],
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
