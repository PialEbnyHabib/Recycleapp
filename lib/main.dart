// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recylce/SplashScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
// Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyBR6slG0_wD3utSFpuVl1ocppsMLmEFkZU ",
      appId: "1:503361472388:android:6b90507f325e499e62bfd1",
      messagingSenderId: "503361472388 ",
      projectId: "recycleapps-d1e61",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recycle',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.transparent,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}




// if picture is not loading(decoding error)

// flutter run -d chrome --web-renderer html 

// shakil123@gmail.com

// Recycle123