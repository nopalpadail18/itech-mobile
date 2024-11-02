import 'dart:convert';

import 'package:http/http.dart';

class Pengeluaran {
  String? id;
  int? nominal;
  String? deskripsi;
  String? keterangan;
  String? tglTransaksi;
  String? kategori;
  String? status;

  Pengeluaran(
      {this.id,
      this.nominal,
      this.deskripsi,
      this.keterangan,
      this.tglTransaksi,
      this.kategori,
      this.status});

  factory Pengeluaran.fromJson(Map<String, dynamic> json) {
    return Pengeluaran(
      id: json['id'],
      nominal: json['nominal'],
      deskripsi: json['deskripsi'],
      keterangan: json['keterangan'],
      tglTransaksi: json['tgl_transaksi'],
      kategori: json['kategori'],
      status: json['status'],
    );
  }

  static Future<List<Pengeluaran>> getPengeluaran() async {
    var url = Uri.parse('http://192.168.1.10:8000/api/Transaksi');
    var response = await get(url);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body)['listPengeluaran'] as List;
      return jsonData.map((p) => Pengeluaran.fromJson(p)).toList();
    } else {
      throw Exception('Failed to load Pengeluaran');
    }
  }
}
