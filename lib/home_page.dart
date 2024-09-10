import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/navigation/searchbar.dart';
import 'package:ukl_perlu_tukang/style/artikel.dart';
import 'package:ukl_perlu_tukang/style/jasaterdekat.dart';
import 'package:ukl_perlu_tukang/style/topmenu.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Center(
          child: Column(
            children: [
              const TopMenu(),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Lokasi Saya",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 8),
                          Text("Kedungkandang, Kota Malang")
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.grey, size: 35)
                    ],
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 10))
                    ],
                    // border: Border.all(color: Colors.grey, width: 3)
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  //SET THE HEIGHT
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Aligns the children vertically centered
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Aligns the children horizontally centered
                      children: [
                        Text(
                          "Kategori Jasa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Temukan kebutuhan servismu dibawah ini sesuai yang kamu butuhkan",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/logo/ac.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service AC',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/logo/cat.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Cat',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/logo/cctv.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service CCTV',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/logo/bata.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Bangunan',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/logo/truk.png'),
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                    height:
                                        8), // Add some spacing between image and text
                                Text(
                                  'Service Derek',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                //SET THE HEIGHT
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Penyedia Jasa Terdekat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 18),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContainerCard(
                            placeName: 'TOKO PRESTASI',
                            address: 'Jalan Raya Tawang No 88 Jawa Timur',
                          ),
                          ContainerCard(
                            placeName: 'TOKO CRYPTO',
                            address:
                                'Jalan Gatot Subroto No 10 Jakarta Selatan',
                          ),
                          ContainerCard(
                            placeName: 'KEDAI 69',
                            address: 'Jalan Kenanga No 5 Bandung',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 10))
                  ],
                  // border: Border.all(color: Colors.grey, width: 3)
                ),
                margin: const EdgeInsets.symmetric(vertical: 20),
                //SET THE WIDTH
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artikel Terbaru",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(height: 18),
                    Column(
                      children: [
                        ArticleCard(
                          imagePath: 'assets/images/arc1.png',
                          title: 'Update Aplikasi perlu Tukang',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ArticleCard(
                          imagePath: 'assets/images/arc2.png',
                          title: 'Update Patch 1.20.1 Snapshot',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ArticleCard(
                          imagePath: 'assets/images/arc3.png',
                          title: 'Cara menjadi Sigma Telkom',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: NavBar(
      //   currentIndex: _currentIndex,
      //   onTap: _onTap,
      );
  }
}