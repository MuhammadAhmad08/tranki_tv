import 'package:flutter/material.dart';
import 'package:tranki_tv/extensions/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../settings/settings.dart';

class ChosePlaylist extends StatelessWidget {
  const ChosePlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CommonAppBar(
              title: 'Choose your playlist Style',
            ),
            Opacity(
              opacity: 0.50,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x19CE1F4E)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x07000000),
                      blurRadius: 15,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 210,
                      height: double.infinity,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffcd1f4e),
                            Color.fromARGB(255, 212, 93, 125),
                              Color(0xffcd1f4e)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(50),
                        ),
                        
                      ),
                      child: playlistChild(image: 'assets/images/live-tv.svg'),
                    ).expanded(flex: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(0.72, -0.69),
                              end: Alignment(-0.72, 0.69),
                              colors: [
                                Color(0xFF229287),
                                Color(0xFF2DC4B5),
                                Color(0xFF107C71)
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x07000000),
                                blurRadius: 15,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: playlistChild(
                                  image: 'assets/images/sereies.svg',
                                  title: 'Series')
                              
                        ).expanded(),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.72, -0.69),
                              end: Alignment(-0.72, 0.69),
                              colors: const [
                                Color(0xFFA0A4FF),
                                Color(0xFF9599F6),
                                Color(0xFF5A5EB9)
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                             
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x07000000),
                                blurRadius: 15,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: playlistChild(
                                  image: 'assets/images/movies.svg',
                                  title: 'Movies')
                             
                        ).expanded(),
                      ],
                    ).expanded(flex: 50),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 210,
                      height: double.infinity,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF40E0D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x07000000),
                            blurRadius: 15,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Text(
                        'AD \nappears here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ).expanded(flex: 25)
                  ],
                ),
              ),
            ).expanded()
          ],
        ),
      ),
    );
  }

  Column playlistChild({String? image, title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(image ?? ''),
        const SizedBox(
          height: 10,
        ),
        Text(
          title ?? 'LIVE TV',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
