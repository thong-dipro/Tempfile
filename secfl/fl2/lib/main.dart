import 'dart:ffi';

import 'package:fl2/Fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(mainapp());
}

class mainapp extends StatelessWidget {
  const mainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[800],
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Xin chào Flutter",
            style: TextStyle(
              fontFamily: "GoogleSans",
              fontSize: 20,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: RowStl(),
            ),
            Container(
              child: NutCong(),
            )
          ],
        ));
  }
}

class RowStl extends StatelessWidget {
  const RowStl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Xanh lá",
              style: TextStyle(
                  fontSize: 20, fontFamily: "GoogleSans", color: Colors.white),
            ),
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Vàng",
              style: TextStyle(
                  fontSize: 20, fontFamily: Fonts.font1, color: Colors.white),
            ),
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Đỏ",
              style: TextStyle(
                  fontSize: 20, fontFamily: "GoogleSans", color: Colors.white),
            ),
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/corgy.png'),
            ),
          )
        ],
      ),
    );
  }
}

class NutCong extends StatefulWidget {
  const NutCong({Key? key}) : super(key: key);

  @override
  _NutCongState createState() => _NutCongState();
}

class _NutCongState extends State<NutCong> {
  int count = 0;
  void counterIncrease() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Bạn đã bấm dấu cộng $count lần",
          ),
          FloatingActionButton(
              onPressed: () {
                counterIncrease();
              },
              child: Icon(
                Icons.add,
              )),
        ],
      ),
    );
  }
}
