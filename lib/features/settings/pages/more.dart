import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  bool isCustomIcon = true;
  bool isCustomIcon2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          languageList(text: 'Terms & Conditions'),
          languageList(text: 'License'),
        ],
      ),
    );
  }

  Widget languageList({String? text}) {
    return Container(
      width: double.infinity,
      height: 50,
     
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFCE1F4E)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text ?? '',
        style: const TextStyle(
          color: Color(0xFF121212),
          fontSize: 14,
        ),
      ),
    );
  }
}
