import 'package:flutter/material.dart';

import 'package:ukl_perlu_tukang/navigation/searchbar.dart';
import 'package:ukl_perlu_tukang/style/profilebutton.dart';

void editProfile() {
    // Add logic here to navigate to the edit profile screen or perform other actions
    print('Edit button pressed');
  }
class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

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
        child: Column(
          children: [
            //PROFILE CONTAINER
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 CircleAvatar(
                   radius: 35,
                   backgroundColor: Colors.transparent,
                   backgroundImage: AssetImage('assets/images/profile.png'),
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(
                       'Daffa Akmal Nafi',
                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                     SizedBox(height: 8),
                     Text(
                       'daffa.akmal@gmail.com',
                       style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                     ),
                     Text(
                       '6285123456789',
                       style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                     ),
                   ],
                 ),
                 ElevatedButton(
                   onPressed: editProfile,
                   child: Text('Edit'),
                 ),
               ],
                  ),
            ),
            //TOOLS BOX
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 10,),   
            //Ubah Password
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock, size: 28,),
                      SizedBox(width: 15,),
                  Text('Ubah Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),
                  Icon(Icons.arrow_forward, size: 28,),
                ],
              )),
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 10,),
            PButton(
              icon: Icons.chat,
              text: 'Ketentuan Layanan'
            ),
            PButton(
              icon: Icons.privacy_tip,
              text: 'Kebijakan Privasi'
            ),
            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 10,),
            PButton(
              icon: Icons.call_end_outlined, 
              text: 'Whatsapp Admin'
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.logout, size: 28, color: Colors.red,),
                      SizedBox(width: 15,),
                  Text('Keluar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),),
                    ],
                  ),
                ],
              )),
            //Version Control
            Container(
              color: Color.fromARGB(255, 245, 245, 245),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(child: Text("Version V 1.0.0")),),
          ],
        ),
      ),
    );
  }
}
