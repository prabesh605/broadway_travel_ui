import 'package:broadway_ui_travel/widgets/destination_widget.dart';
import 'package:broadway_ui_travel/widgets/recommended_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Explorer"),
        actions: [Icon(Icons.notifications), SizedBox(width: 10)],
      ),
      drawer: Drawer(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              // trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              // trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              // trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,//vertically
          crossAxisAlignment: CrossAxisAlignment.start, //horizontally

          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Destinations',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Popular Destinations",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DestinationWiget(
                    image:
                        "https://images.unsplash.com/photo-1707343848552-893e05dba6ac?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    name: 'Maldives',
                  ),
                  SizedBox(width: 20),
                  DestinationWiget(
                    image:
                        "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    name: 'Paris',
                  ),
                  SizedBox(width: 20),
                  DestinationWiget(
                    image:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Japan',
                  ),
                  SizedBox(width: 20),
                  DestinationWiget(
                    image:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    name: 'Nepal',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Recommended Tour",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Expanded(
              // height: 400,
              child: ListView(
                children: [
                  RecommendedWidget(
                    name: 'Beach Paradise',
                    imgUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  SizedBox(height: 20),
                  RecommendedWidget(
                    name: 'Beach Paradise',
                    imgUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  SizedBox(height: 20),
                  RecommendedWidget(
                    name: 'Beach Paradise',
                    imgUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
