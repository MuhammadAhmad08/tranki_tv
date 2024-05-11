import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class M3U extends StatefulWidget {
  const M3U({super.key});

  @override
  State<M3U> createState() => _M3UState();
}

class _M3UState extends State<M3U> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Image(
                    image:
                        AssetImage('assets/images/Logo-removebg-preview 1.png'),
                    width: 274,
                    height: 129,
                  ),
                ),
                
                Text(
                  'M3U Playlist',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -0.41,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
