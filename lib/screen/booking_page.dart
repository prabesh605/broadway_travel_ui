import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book your stay")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //select date
            Text(
              "Select Dates",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //row --calender show and value set
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Check-in")),
                ElevatedButton(onPressed: () {}, child: Text("Check-out")),
              ],
            ),
            // row type --column
            SizedBox(height: 20),
            Text(
              "Room Types",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              value: "Standard",
              onChanged: (value) {},
              title: Text("Standard Room -\$99/night"),
            ),
            RadioListTile(
              value: "Deluxe",
              onChanged: (value) {},
              title: Text("Deluxe Room - \$149/night"),
            ),
            Spacer(),
            //elevated button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Confirm Booking"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
