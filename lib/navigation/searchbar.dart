import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScBar extends StatelessWidget {
  const ScBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 245, 245),
        borderRadius: BorderRadius.circular(50)), 
      width:
          MediaQuery.of(context).size.width * 0.7, // 70% of the screen width
      child: const Row(
        children: [
          Icon(Icons.search,color: Colors.black, size: 25,),
          SizedBox(width: 10),
          // Text("Search..", style: TextStyle(color: Colors.black),)
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search..',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
