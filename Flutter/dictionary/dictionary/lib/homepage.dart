// import 'package:flutter/cupertino.dart';
import 'package:dictionary/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  String username = "";
  TextEditingController usernamecotrol = TextEditingController();
  TextEditingController passwordcotrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset("assets/images/logo.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Welcome back!!",
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                onChanged: (text) {
                  username = text;
                },
                controller: usernamecotrol,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    labelText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: passwordcotrol,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    labelText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                minWidth: double.infinity,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 60,
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have account ? "),
                  // NavigatorText
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegPage()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text("Sign in with"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/google.png"),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/google.png"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
