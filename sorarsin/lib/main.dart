import 'package:flutter/material.dart';
import 'package:sorarsin/screen/HomeScreen/Home_Screen.dart';
import 'package:sorarsin/screen/girisekranlari/reset_password.dart';
import 'package:sorarsin/screen/girisekranlari/singin.dart';
import 'package:sorarsin/screen/girisekranlari/singup.dart';


void main(){
  runApp(Sorsan());
}

class Sorsan extends StatelessWidget{
  const Sorsan ({super.key});

  @override
  Widget build(BuildContext contex){
return MaterialApp(
  title: "Sorsan 1.demo",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  ),
  home: const signin(),

);


  }


}