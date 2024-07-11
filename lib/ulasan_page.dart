import 'package:flutter/material.dart';

class UlasanPage extends StatefulWidget {
  const UlasanPage({Key? key}) : super(key: key);

  @override
  _UlasanPageState createState() => _UlasanPageState();
}

class _UlasanPageState extends State<UlasanPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _ulasanController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _ulasanController.dispose();
    super.dispose();
  }

  void _submitReview() {
    if (_formKey.currentState!.validate()) {
      final nama = _namaController.text;
      final ulasan = _ulasanController.text;

      // Do something with the review data (e.g., save to database or send to API)

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Terima kasih atas ulasannya, $nama!')),
      );

      // Clear the form
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beri Ulasan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _ulasanController,
                decoration: const InputDecoration(labelText: 'Ulasan'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ulasan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitReview,
                child: const Text('Kirim'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
