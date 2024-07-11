import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bantuan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cara Menggunakan Aplikasi',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1. Lihat daftar mobil yang tersedia di halaman "Lihat Mobil".',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '2. Pilih mobil yang ingin Anda sewa dan tekan "Add to Cart".',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '3. Periksa mobil yang telah Anda tambahkan di halaman "Pesan Mobil".',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Hubungi Kami',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Jika Anda memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan hubungi kami melalui:',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Email: info@rentalmobil.com',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- Telepon: +62 123 4567',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
