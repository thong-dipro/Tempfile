import 'package:english_card/screen/Homepage.dart';
import 'package:english_card/asset/app_asset.dart';
import 'package:english_card/asset/app_color.dart';
import 'package:english_card/asset/app_font.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Welcome to",
                style: AppFonts.h3.copyWith(color: Colors.white),
              ),
            )),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "English",
                        style: AppFonts.h2
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ),
                    Container(
                      // alignment: Alignment.Right,
                      padding: const EdgeInsets.all(50),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Quotes"',
                        textAlign: TextAlign.right,
                        style: AppFonts.h3
                            .copyWith(color: Colors.white, height: 0.5),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Container(
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    shape: CircleBorder(),
                    fillColor: AppColors.buttonColor,
                    child: Image.asset(AppAssets.arrow),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
