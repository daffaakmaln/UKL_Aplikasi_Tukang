// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/data/item.dart';
import 'package:ukl_perlu_tukang/navigation/searchbar.dart';

class Transaction extends StatefulWidget {
  final List<item> items = [
    item(
        tanggal: '07/05/2024',
        jam: '06.00',
        foto: 'assets/images/profile.png',
        nama: 'Daffa Akmal Nafi',
        desc1: '5758 teknik',
        desc2: 'Menunggu Konfirmasi'),
    item(
        tanggal: '07/05/2024',
        jam: '06.00',
        foto: 'assets/images/profile.png',
        nama: 'Daffa Akmal Nafi',
        desc1: '5758 teknik',
        desc2: 'Menunggu Konfirmasi'),
    item(
        tanggal: '07/05/2024',
        jam: '06.00',
        foto: 'assets/images/profile.png',
        nama: 'Daffa Akmal Nafi',
        desc1: '5758 teknik',
        desc2: 'Menunggu Konfirmasi')
  ];
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Transaction> {
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
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];
            return Card(
              color: Color.fromARGB(255, 250, 250, 250),
              shadowColor: Colors.white,
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(item.foto),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(item.tanggal, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10,),
                            Text(item.jam, style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(item.desc1, style: TextStyle(color: Colors.blue),),
                            SizedBox(width: 20,),
                            Text(item.desc2, style: TextStyle(color: Colors.orange)),
                          ],
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
