import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/music_screen/provider/resso_provider.dart';
import 'package:resso/screen/music_screen/view/resso_screen1.dart';
import 'package:resso/screen/music_screen/view/resso_screen2.dart';
import 'package:resso/screen/music_screen/view/resso_screen3.dart';
import 'package:resso/screen/music_screen/view/resso_screen4.dart';
import 'package:resso/screen/music_screen/view/resso_screen5.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Resso_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Resso_screen1(),
          'resso_screen2' : (context) => resso_screen2(),
          'resso_screen3' : (context) => resso_screen3(),

          'resso_screen4' : (context) => resso_screen4(),
          'Resso_screen5' : (context) => Resso_screen5(),
          'Resso_screen1' : (context) => Resso_screen1(),

        },
      ),
    ),
  );
}