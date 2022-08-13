import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Bottom Navigation bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;

  final Screens = [
    Container(
      color: Color.fromARGB(255, 236, 69, 194),
      child: Center(
          child: Text(
        "Home Screen",
        style: TextStyle(fontSize: 30),
      )),
    ),
    Container(
      color: Color.fromARGB(255, 255, 162, 232),
      child: Center(
          child: Text(
        "Music Screen",
        style: TextStyle(fontSize: 30),
      )),
    ),
    Container(
      color: Color.fromARGB(255, 255, 156, 230),
      child: Center(
          child: Text(
        "Movies Screen",
        style: TextStyle(fontSize: 30),
      )),
    ),
    Container(
      color: Color.fromARGB(255, 250, 132, 220),
      child: Center(
          child: Text(
        "Profile Screen",
        style: TextStyle(
          fontSize: 30,
        ),
      )),
    ),
    Container(
      color: Color.fromARGB(255, 249, 105, 213),
      child: Center(
          child: Text(
        "Setting Screen",
        style: TextStyle(fontSize: 30),
      )),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (indexing) => setState(() {
          currentindex = indexing;
        }),

        currentIndex: currentindex,
        // onTap: (index) => setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
            backgroundColor: Colors.pink.shade100,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: "Musics"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: "Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
