import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Tambahkan impor untuk FontAwesome

class WeddingCarPage extends StatelessWidget {
  const WeddingCarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wedding Car'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'Wedding Car',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Image.asset('assets/images/pajero.jpg'), // Use Image.asset to load image
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Buat acara pernikahan yang menuntut Anda menggunakan kendaraan mewah, rental mobil pengantin Jakarta memang menjadi solusi yang tepat. Anda hanya tinggal duduk nyaman dan biarkan supir mengantar Anda menuju tempat spesial.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Dengan Rental Mobil Jakarta, Anda tak perlu repot-repot lagi mempersiapkan mobil mewah penuh hiasan pita dan bunga warna-warni. Kami siap menyediakan untuk Anda lengkap beserta hiasannya.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Tak hanya itu, Anda juga bisa memperoleh keuntungan lain yang mungkin tidak bisa Anda dapatkan jika menggunakan kendaraan pribadi.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Tambahkan logika untuk WhatsApp button
                },
                child: const FaIcon(FontAwesomeIcons.whatsapp), // Menggunakan FaIcon untuk ikon WhatsApp
              ),
            ),
          ],
        ),
      ),
    );
  }
}
