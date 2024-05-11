import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tranki_tv/features/screens/splash_screen.dart';
import 'package:get/get.dart';

import 'features/playlist/playlists.dart';
import 'features/settings/settings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(fontFamily: 'Montserrat', dividerColor: Colors.transparent),
      home: ChosePlaylist(),
    );
  }
}
