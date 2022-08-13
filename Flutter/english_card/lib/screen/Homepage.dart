import 'package:english_card/asset/app_color.dart';
import 'package:flutter/material.dart';
import '../asset/app_font.dart';
import '../asset/app_asset.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroudColor,
        title: Text("English today",
            style: AppFonts.h3.copyWith(color: Colors.black)),
        leading: Image.asset(AppAssets.menu),
        elevation: 0,
      ),
      body: Viewpage(),
    );
  }
}

class Viewpage extends StatefulWidget {
  const Viewpage({Key? key}) : super(key: key);

  @override
  _ViewpageState createState() => _ViewpageState();
}

class _ViewpageState extends State<Viewpage> {
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.backgroudColor,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "It's amazing how complete is the delusion that beauty is goodness",
              style: AppFonts.h6.copyWith(color: Colors.black),
            ),
          ),
          Column(
            children: [
              Container(
                color: AppColors.backgroudColor,
                height: size.height * 2 / 3,
                child: PageView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryColor),
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              // color: Colors.red,
                              alignment: Alignment.centerRight,
                              child: Image.asset(AppAssets.heart),
                            ),
                            Container(
                                color: AppColors.primaryColor,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 6,
                                                color: Colors.blue,
                                                offset: Offset(1, 1))
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24))),
                                      // color: Colors.yellow,
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        "B",
                                        style: AppFonts.h1.copyWith(
                                            // decoration:
                                            ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        "eauti",
                                        style: AppFonts.h2,
                                      ),
                                    )
                                  ],
                                )),
                            Container(
                              color: AppColors.primaryColor,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                '"Think of all the beauty still left arround you and be happy"',
                                style:
                                    AppFonts.h4.copyWith(color: Colors.black),
                              ),
                            ),
                            Container(
                              // color: Colors.green,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.all(20),
                              child: Text(
                                "-Anne Frank",
                                style:
                                    AppFonts.h4.copyWith(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            color: AppColors.buttonColor,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: FloatingActionButton(
              backgroundColor: AppColors.primaryColor,
              elevation: 3,
              onPressed: () {},
              child: Image.asset(AppAssets.exchange),
            ),
          ),
        ],
      ),
    );
  }
}
