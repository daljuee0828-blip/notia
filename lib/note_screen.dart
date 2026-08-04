import 'package:flutter/material.dart';


class NoteScreen extends StatelessWidget {

const NoteScreen({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar:AppBar(
title:const Text("새 노트"),
),

body:const Center(

child:Text(
"✏️ 필기 화면\n(S펜 준비 중)",
textAlign:TextAlign.center,
style:TextStyle(fontSize:24),
),

),

);

}

}