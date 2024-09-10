import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/navigation/searchbar.dart';

class IsiSaldo extends StatelessWidget {
  IsiSaldo({super.key});

  final List<Map<String, String>> transactions = [
    {
      'title': 'Pembelian Pulsa',
      'date': '2024-09-01',
      'amount': 'Rp 50.000',
    },
    {
      'title': 'Pembayaran Listrik',
      'date': '2024-09-02',
      'amount': 'Rp 100.000',
    },
    {
      'title': 'Topup E-Wallet',
      'date': '2024-09-03',
      'amount': 'Rp 200.000',
    },
    {
      'title': 'Tukang pipa Herman',
      'date': '2024-09-03',
      'amount': 'Rp 125.000',
    },
    {
      'title': 'Pembayaran CV. ABC',
      'date': '2024-09-03',
      'amount': 'Rp 350.000',
    },
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Saldo E-Wallet',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp. 0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.cyan,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Topup'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List Transaksi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  // SizedBox dengan height agar layout tidak error
                  SizedBox(
                    height: 450, // 
                    child: transactions.isEmpty
                        ? Center(
                            child: Text(
                              'Tidak ada data transaksi',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        : ListView.separated(
                            itemCount: transactions.length,
                            separatorBuilder: (context, index) => Divider(
                              color: Colors.white,
                            ),
                            itemBuilder: (context, index) {
                              return ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.cyan.shade100,
                                  child: Icon(
                                    Icons.monetization_on,
                                    color: Colors.cyan,
                                  ),
                                ),
                                title: Text(
                                  transactions[index]['title']!,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(transactions[index]['date']!),
                                trailing: Text(
                                  transactions[index]['amount']!,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
