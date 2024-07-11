import 'package:flutter/material.dart';
import 'mobil.dart';

class CheckoutPage extends StatefulWidget {
  final Mobil mobil;

  const CheckoutPage({Key? key, required this.mobil}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _expiryDateController = TextEditingController();
  final _cvvController = TextEditingController();

  void _processPayment() {
    if (_formKey.currentState!.validate()) {
      // Logika pembayaran bisa ditambahkan di sini
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Pembayaran Berhasil untuk ${widget.mobil.nama}')),
      );
      // Misalnya, Anda bisa mengarahkan ke halaman sukses setelah pembayaran berhasil
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout ${widget.mobil.nama}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Anda memesan mobil:',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                widget.mobil.nama,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Harga: ${widget.mobil.harga} / hari',
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              Image.asset(widget.mobil.imagePath), // Use Image.asset instead of Image.network
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama pada Kartu',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nama pada kartu';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _cardNumberController,
                decoration: const InputDecoration(
                  labelText: 'Nomor Kartu Kredit',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nomor kartu kredit';
                  }
                  if (value.length != 16) {
                    return 'Nomor kartu kredit harus terdiri dari 16 digit';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _expiryDateController,
                decoration: const InputDecoration(
                  labelText: 'Tanggal Kedaluwarsa (MM/YY)',
                ),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan tanggal kedaluwarsa';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _cvvController,
                decoration: const InputDecoration(
                  labelText: 'CVV',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan CVV';
                  }
                  if (value.length != 3) {
                    return 'CVV harus terdiri dari 3 digit';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _processPayment,
                child: const Text('Lanjutkan Pembayaran'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
