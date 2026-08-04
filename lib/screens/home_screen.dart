import 'package:flutter/material.dart';
import 'note_screen.dart';
import 'ai_screen.dart';
import 'tool_screen.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});


  void move(BuildContext context, Widget page){

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>page,
      ),
    );

  }


  @override
  Widget build(BuildContext context){

    return Scaffold(

      backgroundColor: const Color(0xffF7F8FC),

      appBar: AppBar(
        title: const Text("Notia"),
        centerTitle: true,
      ),


      body: Padding(

        padding: const EdgeInsets.all(24),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children:[


            const Text(
              "AI 학습 필기 노트",
              style:TextStyle(
                fontSize:28,
                fontWeight:FontWeight.bold,
              ),
            ),


            const SizedBox(height:30),


            button(
              context,
              "✏️ 새 노트",
              ()=>move(context,const NoteScreen()),
            ),


            button(
              context,
              "🤖 AI 선생님",
              ()=>move(context,const AIScreen()),
            ),


            button(
              context,
              "📄 PDF 가져오기",
              ()=>move(context,const ToolScreen(title:"PDF")),
            ),


            button(
              context,
              "⏱ 공부 타이머",
              ()=>move(context,const ToolScreen(title:"타이머")),
            ),

          ],

        ),

      ),

    );

  }


  Widget button(
      BuildContext context,
      String text,
      VoidCallback tap
      ){

    return Card(

      margin:const EdgeInsets.only(bottom:15),

      child:ListTile(

        title:Text(text),

        trailing:
        const Icon(Icons.arrow_forward_ios),

        onTap:tap,

      ),

    );

  }

}