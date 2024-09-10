import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/daftartukang.dart';
import 'package:ukl_perlu_tukang/home_page.dart';
import 'package:ukl_perlu_tukang/isisaldo.dart';
import 'package:ukl_perlu_tukang/profile.dart';
import 'package:ukl_perlu_tukang/transaksi.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar',
      home: MyHomePage(),
    );
  }
}

class NavigationBar1 extends StatefulWidget {
  @override
  NavigationBar1State createState() => NavigationBar1State();
}

class NavigationBar1State extends State<NavigationBar1> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MyHomePage(),
    Transaction(),
    DaftarTukang(),
    IsiSaldo(),
    MyProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            label: 'Daftar Tukang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Isi Saldo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}