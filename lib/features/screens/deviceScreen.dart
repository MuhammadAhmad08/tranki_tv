import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tranki_tv/features/screens/license.dart';

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
                    SizedBox(height: screenSize.height*0.1,),
                    SizedBox(width: width*0.3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                        foregroundColor: Colors.white
                        ),
                        onPressed: (){
                          {Navigator.push(context, MaterialPageRoute(builder: (context)=> License()),
                          );
                          }
                        }, child:const Text('Mobile')),
                        
                    ),
                    SizedBox(height: hight*0.05,),
                    SizedBox(width: screenSize.width*0.3,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                          foregroundColor: Colors.white
                          ),
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> License()),
                          );
                          }, child:const Text('Smart TV')),
                    ),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}