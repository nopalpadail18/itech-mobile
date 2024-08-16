import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itech/screens/naviation_screen.dart';

class PemasukanScreen extends StatefulWidget {
  const PemasukanScreen({super.key});

  @override
  State<PemasukanScreen> createState() => _PemasukanScreenState();
}

class _PemasukanScreenState extends State<PemasukanScreen> {
  final ValueNotifier<bool> _isShowingTotal = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              height: 350,
              color: const Color(0xFF4f4fda),
              child: Container(
                padding: const EdgeInsets.all(1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: IconButton(
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
                              size: 30,
                            ),
                          ),
                        ),
                        const Text(
                          'Transaksi Pemasukan',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(Icons.more_vert,
                            color: Colors.white, size: 30),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            'Pemasukan di Tahun 2024 (IDR)',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ValueListenableBuilder(
                                valueListenable: _isShowingTotal,
                                builder: (context, value, _) {
                                  String total = _isShowingTotal.value
                                      ? 'Rp *********'
                                      : 'Rp 143.227.000';
                                  return Text(
                                    total,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  );
                                },
                              ),
                              IconButton(
                                  onPressed: () {
                                    _isShowingTotal.value =
                                        !_isShowingTotal.value;
                                  },
                                  icon: const Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon:
                                      const Icon(Icons.add, color: Colors.white),
                                  label: const Text(
                                    'Add Pemasukan',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 56, 56, 157)),
                                ),
                              ),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  'Add Pemasukan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 56, 56, 157)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                  
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
