import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final String placeName;
  final String address;

  const ContainerCard({
    Key? key,
    required this.placeName,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, 
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            placeName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            address,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            maxLines: 2, 
            overflow: TextOverflow.ellipsis, 
          ),
          SizedBox(height: 8,),
          Text("View more ->",
          style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),)
        ],
      ),
    );
  }
}