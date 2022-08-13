import 'package:firebase_app/firebase_service.dart';
import 'package:firebase_app/view_db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const MyHomePage(title: 'Firebase Init Application'),
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
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Center(
            child: OutlinedButton(
      child: Text(
        "Sign in with Google",
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () async {
        FirebaseService service = new FirebaseService();
        await service.signInwithGoogle();
        User? user = FirebaseAuth.instance.currentUser;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondScreen(
                    photourl: user!.photoURL!,
                    email: user.email.toString(),
                  )),
        );
      },
    )));
  }
}
