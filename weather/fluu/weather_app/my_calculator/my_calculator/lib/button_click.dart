import 'package:flutter/material.dart';

class ButtonClick extends StatelessWidget {
  const ButtonClick({
    Key? key,
    required this.number,
    required this.textcolor,
    required this.bgcolor,
    required this.onTap,
  }) : super(key: key);
  final String number;
  final Color bgcolor;
  final Color textcolor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (() => onTap()),
      elevation: 2.0,
      fillColor: bgcolor,
      child: Center(
        child: Text(
          number,
          style: TextStyle(fontSize: 35, fontFamily: "SFUI", color: textcolor),
        ),
      ),
      padding: const EdgeInsets.all(15.0),
      shape: const CircleBorder(),
    );
  }
}

// Widget ButtonClick({String? number, Function? onTap, Color bgcolor = Colors.white, Color textcolor = Colors.black}) {
//   return RawMaterialButton(
//       onPressed: () {},
//       elevation: 2.0,
//       fillColor: bgcolor,
//       child: Center(
//         child: Text(
//           number.toString(),
//           style: TextStyle(fontSize: 35, fontFamily: "SFUI", color: textcolor),
//         ),
//       ),
//       padding: const EdgeInsets.all(15.0),
//       shape: const CircleBorder(),
//     );
// }