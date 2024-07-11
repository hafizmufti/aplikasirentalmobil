import 'package:flutter/material.dart';


class ProfilPerusahaanPage extends StatelessWidget {
  const ProfilPerusahaanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Perusahaan'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tentang Kami',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Rental Mobil Nazar adalah perusahaan yang menyediakan layanan penyewaan mobil dengan berbagai pilihan kendaraan untuk memenuhi kebutuhan perjalanan Anda. Kami berkomitmen untuk memberikan pelayanan terbaik dan kenyamanan bagi pelanggan kami.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Visi',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Menjadi perusahaan penyewaan mobil terdepan yang memberikan pelayanan berkualitas dan kenyamanan terbaik bagi pelanggan.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Misi',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1. Menyediakan berbagai pilihan kendaraan yang terawat dan berkualitas.\n'
                    '2. Memberikan pelayanan yang ramah, profesional, dan tepat waktu.\n'
                    '3. Meningkatkan kenyamanan dan kepuasan pelanggan melalui inovasi dan teknologi.\n'
                    '4. Berkontribusi pada keselamatan berkendara dengan menyediakan kendaraan yang aman dan layak jalan.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

