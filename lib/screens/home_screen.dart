import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:itech/utils/dashboard_tile.dart';
import 'package:itech/utils/menus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4f4fda),
      body: SafeArea(
        child: Column(
          children: [
            // greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Hi  Admin
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Admin!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '07 Aug, 2024',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),

                      // Icon
                      const Spacer(),
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 56, 56, 157),
                              borderRadius: BorderRadius.circular(13)),
                          padding: const EdgeInsets.all(11),
                          child: const Icon(Icons.notifications,
                              color: Colors.white)),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // search bar
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 56, 56, 157),
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // Menus

                  const Row(
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // Menu items
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Transaction
                      Column(
                        children: [
                          Menus(
                            icon: Icons.receipt,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Transaksi',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),

                      // List
                      Column(
                        children: [
                          Menus(
                            icon: Icons.list_alt,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('List Tagihan',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),

                      // pengeluaran
                      Column(
                        children: [
                          Menus(
                            icon: Icons.pending_actions,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Pengeluaran',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),

                      // Pemasukan
                      Column(
                        children: [
                          Menus(
                            icon: Icons.incomplete_circle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Pemasukan',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Dashboard',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.dashboard,
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),
                      // List of Dashboard

                      Expanded(
                        child: ListView(
                          children: const [
                            DashboardTile(
                              icon: Icons.person,
                              title: 'Manage Users',
                              subtitle: '15 users registered',
                            ),
                            DashboardTile(
                              icon: Icons.receipt,
                              title: 'Transaksi',
                              subtitle: 'Rp 10.000.000',
                            ),
                            DashboardTile(
                              icon: Icons.list_alt,
                              title: 'List Tagihan',
                              subtitle: 'Rp 20.000.000',
                            ),
                            DashboardTile(
                              icon: Icons.pending_actions,
                              title: 'Pengeluaran',
                              subtitle: 'Rp 5.000.000',
                            ),
                            DashboardTile(
                              icon: Icons.incomplete_circle,
                              title: 'Pemasukan',
                              subtitle: 'Rp 15.000.000',
                            ),
                            DashboardTile(
                              icon: Icons.inbox,
                              title: 'Invoice',
                              subtitle: '15 invoice',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
