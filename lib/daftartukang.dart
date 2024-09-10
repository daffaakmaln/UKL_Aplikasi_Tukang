import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/navigation/searchbar.dart';

class DaftarTukang extends StatelessWidget {
  const DaftarTukang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        leading: Image.asset('assets/splashes/splashsc.png'),
        actions: [
          const ScBar(),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Handle notification action
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset('assets/splashes/splashsc.png'), // Replace with your logo image asset
                  SizedBox(height: 20),
                  Text(
                    'Kamu belum memiliki Jasa,\nSilahkan buat Jasamu terlebih dahulu ..',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Button Section
            ElevatedButton(
              onPressed: () {
                // Proses ketika button di klik
              },
              child: Text('Buat Jasa Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}