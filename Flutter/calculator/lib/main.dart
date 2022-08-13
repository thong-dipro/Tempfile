import 'package:calculator/app_color.dart';
import 'package:calculator/app_font.dart';
import 'package:flutter/cupertino.dart';
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
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Production(),
            ),
            Container(
              child: Column(
                children: [
                  ButtonLayer(),
                  ButtonLayer(),
                  ButtonLayer(),
                  ButtonLayer(),
                ],
              ),
              height: size.height * 7 / 10,
              color: Colors.black,
            ),
            Container(
              height: size.height * 1 / 10,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class Production extends StatefulWidget {
  const Production({Key? key}) : super(key: key);

  @override
  _ProductionState createState() => _ProductionState();
}

class _ProductionState extends State<Production> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          height: size.height * 1 / 5,
          color: Colors.black,
          child: Text(
            "0000",
            textAlign: TextAlign.end,
            style: AppFonts.h1,
          ),
        ),
      ],
    );
  }
}

class ButtonLayer extends StatelessWidget {
  const ButtonLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          ButtonPre("1"),
          Container(
            color: Colors.green,
            height: size.height * 17 / 640,
            width: size.height * 17 / 640,
          ),
          ButtonPre('2'),
          Container(
            color: Colors.green,
            height: size.height * 17 / 640,
            width: size.height * 17 / 640,
          ),
          ButtonPre("3"),
          Container(
            color: Colors.green,
            height: size.height * 17 / 640,
            width: size.height * 17 / 640,
          ),
          ButtonPre("4"),
        ],
      ),
    );
  }
}

class ButtonPre extends StatelessWidget {
  final String strbutton;
  const ButtonPre(this.strbutton);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * (9 / 80),
        child: RawMaterialButton(
          onPressed: () {},
          child: Text(
            strbutton,
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          shape: CircleBorder(),
          fillColor: AppColors.orange_button,
          padding: EdgeInsets.only(left: 15, top: 20),
        ));
  }
}
