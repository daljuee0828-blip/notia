import 'package:flutter/material.dart';


class AIScreen extends StatelessWidget {

const AIScreen({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar:AppBar(
title:const Text("AI 선생님"),
),

body:const Center(

child:Text(
"🤖 AI 연결 준비 중",
style:TextStyle(fontSize:24),
),

),

);

}

}