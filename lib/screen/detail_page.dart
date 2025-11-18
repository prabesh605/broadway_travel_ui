import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page")),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(radius: 80, backgroundColor: Colors.green),
            SizedBox(height: 20),
            Text("Travelers", style: TextStyle(fontSize: 18)),
            // Expanded(
            //   // height: 100,
            //   child: ListView(
            //     // scrollDirection: ,
            //     children: [ListTile(leading: Icon(Icons.favorite))],
            //   ),
            // ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 20),
                      Text("Wishlist", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 20),
                      Text("setting", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 20),
                      Text("logout", style: TextStyle(fontSize: 18)),
                    ],
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
