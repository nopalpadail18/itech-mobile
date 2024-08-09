import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itech/screens/naviation_screen.dart';
import 'package:itech/utils/profile_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF4f4fda),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(11.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 56, 56, 157),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
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
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 50),
                        const Center(
                          child: Text(
                            "My Profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(11.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/user.jpg',
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Admin ITECH',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const Text(
                          'admin@gmail.com',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 56, 56, 157),
                          ),
                          child: const Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const ProfileTile(
                            info: 'Basic Information', icon: Icons.info),
                        const ProfileTile(
                            info: 'Privacy Policy', icon: Icons.key),
                        const ProfileTile(info: 'Help', icon: Icons.help),
                        const ProfileTile(
                            info: 'Settings', icon: Icons.settings),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       padding: const EdgeInsets.all(11.0),
                  //       decoration: BoxDecoration(
                  //         color: const Color.fromARGB(255, 56, 56, 157),
                  //         borderRadius: BorderRadius.circular(16),
                  //       ),
                  //       width: double.infinity,
                  //     ),
                  //   ],
                  // )
                ],
              )),
        ));
  }
}
