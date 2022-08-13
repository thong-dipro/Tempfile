import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String txt = "Đúng";
    bool colors = false;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            txt,
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              if (colors == true) {
                colors = false;
                txt = "Sai";
              } else {
                colors = true;
                txt = "Đúng";
              }
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
            Container(
              child: StfWidget(),
            )
          ],
        ));
  }
}

class StfWidget extends StatefulWidget {
  const StfWidget({Key? key}) : super(key: key);

  @override
  _StfWidgetState createState() => _StfWidgetState();
}

class _StfWidgetState extends State<StfWidget> {
  int counter = 0;
  void Tanglen() {
    setState(() {
      counter++;
      print("Nhấn $counter lần");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Tanglen();
        },
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Center(
              child: Text(
                "Bạn đã nhấn $counter lần",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
