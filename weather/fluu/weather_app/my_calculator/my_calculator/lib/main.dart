import 'package:flutter/material.dart';
import 'package:my_calculator/button_click.dart';
import 'package:my_calculator/colors.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final TextEditingController controller = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  void pressNumber(String number) {
    setState(() {
      print("Ok");
      if (controller.text == "0") {
        controller.text = number;
      } else {
        controller.text += number;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    controller.text = "0";
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerRight,
                  child: TextField(
                    enabled: false,
                    textAlign: TextAlign.right,
                    controller: controller,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "SFUI",
                        fontSize: 80,
                        fontWeight: FontWeight.w300),
                  ),
                )),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "AC",
                            bgcolor: AppColor.grey,
                            textcolor: AppColor.black),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "+/-",
                            bgcolor: AppColor.grey,
                            textcolor: AppColor.black),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "%",
                            bgcolor: AppColor.grey,
                            textcolor: AppColor.black),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "÷",
                            bgcolor: AppColor.grey,
                            textcolor: AppColor.black)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "7",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "8",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "9",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "×",
                            bgcolor: AppColor.orange,
                            textcolor: AppColor.white)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "6",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "5",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "4",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "−",
                            bgcolor: AppColor.orange,
                            textcolor: AppColor.white)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "3",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "2",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "1",
                            bgcolor: AppColor.dark,
                            textcolor: AppColor.white),
                        ButtonClick(
                            onTap: () => pressNumber("2"),
                            number: "+",
                            bgcolor: AppColor.orange,
                            textcolor: AppColor.white)
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: double.infinity,
                                child: RawMaterialButton(
                                  onPressed: () {},
                                  elevation: 2,
                                  padding: const EdgeInsets.all(15),
                                  fillColor: AppColor.dark,
                                  child: const Text(
                                    "0",
                                    style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 35,
                                        fontFamily: "SFUI"),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                                child: ButtonClick(
                                    onTap: () => pressNumber("2"),
                                    number: "1",
                                    bgcolor: AppColor.dark,
                                    textcolor: AppColor.white),
                                flex: 1),
                            Expanded(
                                child: ButtonClick(
                                    onTap: () => pressNumber("2"),
                                    number: "1",
                                    bgcolor: AppColor.dark,
                                    textcolor: AppColor.white),
                                flex: 1)
                          ],
                        ),
                      ),
                      flex: 1),
                  Expanded(child: Column(), flex: 1)
                ],
              ),
              flex: 5,
            )
          ],
        ));
  }
}
