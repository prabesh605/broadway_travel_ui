import 'package:flutter/material.dart';

class DestinationWiget extends StatelessWidget {
  const DestinationWiget({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        border: Border.all(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            child: Image.network(
              image,
              // "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // "Maldives",
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
