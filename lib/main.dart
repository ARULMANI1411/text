

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/Cal.dart';
import 'package:text/bmi%20cal.dart';
import 'package:text/calculator.dart';
import 'package:text/dart.dart';
import 'package:text/gst%20cal.dart';
import 'package:text/multiplication.dart';
import 'package:text/n1.dart';
import 'package:text/show%20data.dart';
import 'package:text/star.dart';
import 'package:text/string.dart';
import 'package:text/text%20edit.dart';
import 'package:text/theme.dart';
import 'package:text/theme_provider.dart';
import 'add item.dart';
import 'asdf.dart';
import 'bottom.dart';


void main() {
  runApp(const MyApp());
 // runApp(ChangeNotifierProvider(create: (context)=>ThemeProvider(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

     // theme: ThemeData(
     //   colorScheme: ColorScheme.light(brightness: Brightness.light,
     //     background:Colors.grey.shade500,
     //     primary: Colors.grey.shade400,
     //     secondary: Colors.grey.shade300,
     //   )
     // ).copyWith(
     //   textTheme: TextTheme(
     //     bodyText1: TextStyle(
     //       color: Colors.grey.shade300,
     //     )
     //   )
     // ),
     // darkTheme: ThemeData(
     //   brightness: Brightness.dark,
     //     colorScheme: ColorScheme.dark(
     //       background: Colors.grey.shade900,
     //       primary: Colors.grey.shade700,
     //       secondary:Colors.grey.shade500,
     //     )
     // ),
      home:starrate(),
     // theme: Provider.of<ThemeProvider>(context).themedata,

      debugShowCheckedModeBanner: false,

    );
  }
}


