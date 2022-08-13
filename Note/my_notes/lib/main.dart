import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes/transaction.dart';
import 'package:my_notes/value.dart';

late Box mybox;
void main() async {
  await Hive.initFlutter(); 
  Hive.registerAdapter(TransactionAdapter());
  mybox = await Hive.openBox("mybox");

  mybox.put("TranDuc", "Hellu");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Money Save'),
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
    int money = 0;
    var name = mybox.get("trans");
    print(name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.themcolor,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.backgroundcolor,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.all(const Radius.circular(12)),
            ),
            // color: AppColors.backgroundcolor,
            child: Column(children: [
              Container(
                  padding: const EdgeInsets.only(left: 24, top: 12, bottom: 12),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Total amount: $name",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                alignment: Alignment.center,
                child: Text(
                  money.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: AppColors.textcolor),
                ),
              ),
              Container(height: 20)
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.themcolor,
        onPressed: () {
          Transaction tr = Transaction();
          tr.setName("Duc Ng");
          tr.setAmount(100);
          tr.setExpense(false);
          mybox.put("tranduc", tr);

          print(mybox.get("tranduc")(2).name);
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
