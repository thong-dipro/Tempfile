import 'package:flutter/material.dart';
import 'package:weather_app/res/app_color.dart';
import 'package:weather_app/widgets/adding_information.dart';
import 'package:weather_app/widgets/today_infor.dart';
import 'package:weather_app/data/weather_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dự báo thời tiết'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BGColor,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: AppColors.bgcolor2,
        ),
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: AppColors.bgcolor2),
          ),
        ),
      ),
      body:
          Homepage(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    print("Ok");
    WeatherApi we = new WeatherApi();
    we.getWeather("Vinh");
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.BGColor,
      child: Column(
        children: [
          TodayInfor("Cloudy", "20", "icon", "Đà Nẵng"),
          // SizedBox(
          //   height: size.height / 2,
          //   width: double.infinity,
          //   child: AddingInfor(),
          // ),
          // AddingInfor()
        ],
      ),
    );
  }
}
