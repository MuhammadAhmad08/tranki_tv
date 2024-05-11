import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  bool isCustomIcon = true;
  bool isCustomIcon2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          languageList(text: 'English'),
          languageList(text: 'French'),
          languageList(text: 'Arabic')
        ],
      ),
    );
  }

  Widget languageList({String? text}) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.only(bottom: 20),
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
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
