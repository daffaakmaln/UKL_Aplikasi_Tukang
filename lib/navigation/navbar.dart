import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  NavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromARGB(222, 255, 255, 255), // Set the background color here
      ),
      child: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule, color: Colors.black),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory, color: Colors.black),
            label: 'Daftar Tukang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet, color: Colors.black),
            label: 'Isi Saldo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.black),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}