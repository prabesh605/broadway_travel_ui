import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    super.key,
    required this.name,
    required this.imgUrl,
  });
  final String name;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 0),
        color: Colors.grey.shade100,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: 140,
            child: Image.network(
              // "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 40),
          Text(
            // "Beach Paradise",
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
