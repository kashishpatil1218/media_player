
import 'package:flutter/material.dart';
import 'package:media_player/provider/video_provider.dart';
import 'package:media_player/screen/splash/splash_page.dart';

import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (context) => ShareProvider(),
        // ),
        ChangeNotifierProvider(
          create: (context) => LikeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}


