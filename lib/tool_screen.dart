import 'package:flutter/material.dart';


class ToolScreen extends StatelessWidget {

final String title;


const ToolScreen({
super.key,
required this.title,
});


@override
Widget build(BuildContext context){

return Scaffold(

appBar:AppBar(
title:Text(title),
),


body:Center(

child:Text(
"$title 기능 준비 중",
style:const TextStyle(
fontSize:24,
),
),

),

);

}

}