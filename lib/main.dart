import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Krischal Om Pote",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("crischal1234@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "KOP",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.car_crash_rounded),
            title: Text('Car'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Icon(Icons.flight),
            title: Text('Plane'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: Text('Train'),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
