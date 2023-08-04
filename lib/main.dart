
import 'package:flutter/material.dart';
import 'package:pet_app/screens/home.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp(const PetApp());
}

class PetApp extends StatelessWidget {
  const PetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 1123),
        minTextAdapt: true,
        builder: (context, widget) {
          return 
             const MaterialApp(
                title: 'Pet App',
                debugShowCheckedModeBanner: false,
                home: PetHome(),
          );
        });}
}
