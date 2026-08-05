import 'package:flutter/material.dart';

class AIScreen extends StatefulWidget {
  const AIScreen({super.key});

  @override
  State<AIScreen> createState() => _AIScreenState();
}

class _AIScreenState extends State<AIScreen> {

  final TextEditingController controller = TextEditingController();

  String answer = "안녕하세요! Notia AI 선생님입니다 🤖";

  void askAI(){

    setState(() {

      if(controller.text.isEmpty){
        answer = "질문을 입력해주세요!";
      }
      else{
        answer =
        "좋은 질문이에요!\n\n"
        "AI 연결 후 여기에 실제 답변이 표시됩니다.\n\n"
        "질문: ${controller.text}";
      }

    });

  }


  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: const Text("AI 선생님"),
      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children:[


            Expanded(

              child: Card(

                child: Padding(

                  padding: const EdgeInsets.all(16),

                  child: Text(
                    answer,
                    style: const TextStyle(
                      fontSize:18,
                    ),
                  ),

                ),

              ),

            ),


            const SizedBox(height:15),


            TextField(

              controller: controller,

              decoration: const InputDecoration(

                hintText:"궁금한 내용을 입력하세요",

                border:OutlineInputBorder(),

              ),

            ),


            const SizedBox(height:10),


            SizedBox(

              width:double.infinity,

              child: ElevatedButton(

                onPressed:askAI,

                child:const Text("AI에게 질문하기"),

              ),

            )

          ],

        ),

      ),

    );

  }

}