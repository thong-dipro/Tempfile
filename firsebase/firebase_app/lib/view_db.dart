import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen(
      {Key? key, required String this.photourl, required String this.email})
      : super(key: key);
  final String photourl;
  final String email;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Initial Firebase Store"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 50,
                child: Image(image: NetworkImage(widget.photourl)),
              ))
        ],
      ),
      body: ViewData(
        email: widget.email,
      ),
    );
  }
}

class ViewData extends StatefulWidget {
  const ViewData({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    CollectionReference users = FirebaseFirestore.instance.collection("User");
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Load data from FireStore: ",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Expanded(
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance
                .collection('User')
                .orderBy('time')
                .snapshots(),
            builder: (_, snapshot) {
              if (snapshot.hasError) return Text('Error = ${snapshot.error}');
              if (snapshot.hasData) {
                final docs = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (_, i) {
                    final data = docs[i].data();
                    if (data['me'] == false) {
                      return Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(0),
                            ),
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            data['message'],
                            style: const TextStyle(color: Colors.white),
                          ));
                    } else {
                      return Container(
                          margin:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(0),
                            ),
                            color: Colors.blue,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            data['message'],
                            style: TextStyle(color: Colors.white),
                          ));
                    }
                  },
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height: 80,
                  child: TextField(
                    style: const TextStyle(fontSize: 18),
                    controller: controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 5),
              child: IconButton(
                  onPressed: () {
                    String message = controller.text.toString();
                    DateTime now = new DateTime.now();
                    bool sender = false;
                    if (widget.email == "tranthong.zipper@gmail.com") {
                      sender = true;
                    }
                    if (message != null) {
                      users.add({'me': sender, 'message': message, 'time': now});
                      controller.text = "";
                    }
                  },
                  icon: Icon(
                    Icons.send,
                    color: Colors.blue,
                    size: 30,
                  )),
            )
          ],
        )
      ],
    );
  }
}
