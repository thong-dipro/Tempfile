import 'package:flutter/cupertino.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    var ls = [
      {
        "Skill 1",
        "Description of Skill 1",
        "https://i.pinimg.com/originals/6f/9b/24/6f9b24e85d5bfb8acff726b5457bbd5c.jpg"
      },
      {
        "Skill 1",
        "Description of Skill 1",
        "https://i.pinimg.com/originals/6f/9b/24/6f9b24e85d5bfb8acff726b5457bbd5c.jpg"
      },
      {
        "Skill 1",
        "Description of Skill 1",
        "https://i.pinimg.com/originals/6f/9b/24/6f9b24e85d5bfb8acff726b5457bbd5c.jpg"
      },
    ];
    return Column(
      children: [
        Image.network(
            "https://i.pinimg.com/originals/6f/9b/24/6f9b24e85d5bfb8acff726b5457bbd5c.jpg"),
        Text("Trần Đức Thông"),
        Text("Full-snack Developer"),
        ListView.builder(
          itemCount: ls.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Image.network(ls[index])
              ],
            );
          },
        )
      ],
    );
  }
}
