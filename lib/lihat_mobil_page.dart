import 'package:flutter/material.dart';
import 'mobil.dart';
import 'package:uas_nazar/pesan_mobil_page.dart';

class LihatMobilPage extends StatelessWidget {
  const LihatMobilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Mobil'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: mobilList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PesanMobilPage(mobil: mobilList[index]),
                ),
              );
            },
            child: MobilCard(mobil: mobilList[index]),
          );
        },
      ),
    );
  }
}

class MobilCard extends StatelessWidget {
  final Mobil mobil;

  const MobilCard({Key? key, required this.mobil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                mobil.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mobil.nama,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Harga: ${mobil.harga} / hari',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PesanMobilPage(mobil: mobil),
                      ),
                    );
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<Mobil> mobilList = [
  Mobil(
    nama: 'Toyota Avanza',
    harga: 'Rp 350.000',
    imagePath: 'assets/images/avanza.jpeg',
  ),
  Mobil(
    nama: 'Honda Jazz',
    harga: 'Rp 400000',
    imagePath: 'assets/images/hondajazz.jpeg',
  ),
  Mobil(
    nama: 'Suzuki Ertiga',
    harga: 'Rp 360.000',
    imagePath: 'assets/images/ertiga.jpg',
  ),
  Mobil(
    nama: 'Daihatsu Xenia',
    harga: 'Rp 330.000',
    imagePath: 'assets/images/daihatsu.jpg',
  ),
  Mobil(
    nama: 'Mitsubishi Pajero',
    harga: 'Rp 800.000',
    imagePath: 'assets/images/pajero.jpg',
  ),
  // Tambahkan mobil lain di sini
];
