import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tranki_tv/features/screens/loremScreen2.dart';

class loremScreen extends StatelessWidget {
  loremScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final screenSize = MediaQuery.of(context).size;
    return Flexible(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: hight * 0.095, vertical: width * 0.015),
                child: const Image(
                    image: AssetImage('assets/images/Rectangle 22482.jpg')),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: hight * 0.02),
                      child: const Text(
                        'Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet consectetur Bibendum nunc elit ut lacus proin quam duis dui elit. Mauris nunc in volutpat commodo leo semper sit sit. In placerat eleifend et adipiscing etiam. Augue vitae.',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 17, 0),
                              foregroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const loremScreen2()));
                          },
                          child: const Text(
                            'next',
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
