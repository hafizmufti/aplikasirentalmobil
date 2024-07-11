import 'package:flutter/material.dart';
import 'mobil.dart';
import 'checkout_page.dart'; // Tambahkan impor untuk CheckoutPage

class PesanMobilPage extends StatelessWidget {
  final Mobil mobil;

  const PesanMobilPage({Key? key, required this.mobil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan ${mobil.nama}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mobil.nama,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Harga: ${mobil.harga} / hari',
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            Image.asset(mobil.imagePath), // Use Image.asset instead of Image.network
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(mobil: mobil),
                  ),
                );
              },
              child: const Text('Pesan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}
