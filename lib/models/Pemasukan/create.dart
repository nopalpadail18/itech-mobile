import 'dart:convert';
import 'package:http/http.dart' as http;

class PostPemasukan {
  String? id;
  int? nominal;
  String? deskripsi;
  String? keterangan;
  String? tglTransaksi;
  String? kategori;
  String? status;

  PostPemasukan(
      {this.id,
      this.nominal,
      this.deskripsi,
      this.keterangan,
      this.tglTransaksi,
      this.kategori,
      this.status});

  factory PostPemasukan.createPemasukan(Map<String, dynamic> object) {
    return PostPemasukan(
        id: object['id'],
        nominal: object['nominal'],
        deskripsi: object['deskripsi'],
        keterangan: object['keterangan'],
        tglTransaksi: object['tglTransaksi'],
        kategori: object['kategori'],
        status: object['status']);
  }

  static Future<PostPemasukan> postPemasukan() async {
    var url = Uri.parse('http://192.168.1.15:8000/api/Transaksi-Post');
    var response = await http.post(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    });

    if (response.statusCode == 201) {
      return PostPemasukan.createPemasukan(jsonDecode(response.body)['data']);
    } else {
      throw Exception('Failed to post pemasukan');
    }
  }
}
