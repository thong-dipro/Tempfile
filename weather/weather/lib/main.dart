import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/weathers.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dự báo thời tiết"),
        ),
        body: const Homepage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<weather> listweather = [];
  int coun = 0;
  getUser() async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?q=Vinh&appid=23ceae0f5730cd8bf5dc3b53b13cf212"));
    List<String> ls = response.body.split('"');
    for (int i = 1; i < ls.length; i++) {
      if (ls[i] == "temp") {
        String str = ls[++i];
        double temper =
            (double.parse(str.substring(1, str.length - 1)) - 273.15);
        int nhietdo = temper.toInt();
        for (int j = i; j < ls.length; j++) {
          if (ls[j] == 'dt_txt') {
            j += 2;
            var parsedDate = DateTime.parse(ls[j]);
            weather w = weather(nhietdo, parsedDate);
            listweather.add(w);
            break;
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    getUser();
    final List<int> colorCodes = <int>[600, 500, 100];
    int Len = listweather.length;
    if (listweather.length == 0) {
      print("return");
      setState(() {
        print("setstate: " + listweather.length.toString());
      });
    }
    print("Do dai: " + listweather.length.toString());
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          // print(Len);
          coun++;
          String text = "Nhiet do: ";
          return Container(
              height: 50,
              width: double.infinity,
              color: Colors.amber,
              child: Center(
                child: Text(text),
              ));
        });
    // ListView.builder(
    //   itemCount: 5,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       color: Colors.green,
    //       height: 50,
    //       width: double.infinity,
    //       child: Container(
    //         child: Text("Ok"),
    //       ),
    //     );
    //   },
    // ),
  }
}
