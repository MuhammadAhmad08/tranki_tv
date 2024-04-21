import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final screenSize = MediaQuery.of(context).size;
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            children: [
             const Align(
                alignment: Alignment.centerLeft,
                child: Image(image: AssetImage('assets/images/Logo-removebg-preview 1.png'),
                ),
                ),
                SizedBox(width: screenSize.width*0.1),
                Column(children: [
                  const Text('Choose Your Dveice',style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(onPressed: (){}, child:const Text('Mobile'))
                ],)
            ],
          ),
        ),
      ),
    );
  }
}