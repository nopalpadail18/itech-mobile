import 'dart:convert';
import 'package:http/http.dart' as http;

class Pemasukan {
  String? id;
  int? nominal;
  String? deskripsi;
  String? keterangan;
  String? tglTransaksi;
  String? kategori;
  String? status;

  Pemasukan({
    this.id,
    this.nominal,
    this.deskripsi,
    this.keterangan,
    this.tglTransaksi,
    this.kategori,
    this.status,
  });

  factory Pemasukan.fromJson(Map<String, dynamic> json) {
    return Pemasukan(
      id: json['id'],
      nominal: json['nominal'],
      deskripsi: json['deskripsi'],
      keterangan: json['keterangan'],
      tglTransaksi: json['tgl_transaksi'],
      kategori: json['kategori'],
      status: json['status'],
    );
  }

  static Future<List<Pemasukan>> getPemasukan() async {
    var url = Uri.parse("http://192.168.1.15:8000/api/Transaksi");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body)['listPemasukan'] as List;
      return jsonData.map((p) => Pemasukan.fromJson(p)).toList();
    } else {
      throw Exception('Failed to load pemasukan');
    }
  }
}

