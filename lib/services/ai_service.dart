import 'package:flutter/material.dart';
import 'services/ai_service.dart';


class AIScreen extends StatefulWidget {

  const AIScreen({super.key});


  @override
  State<AIScreen> createState() => _AIScreenState();

}



class _AIScreenState extends State<AIScreen> {


  final TextEditingController controller =
      TextEditingController();


  String answer =
      "안녕하세요! Notia AI 선생님입니다 🤖";



  Future<void> askAI() async {


    if(controller.text.isEmpty){

      setState(() {

        answer = "질문을 입력해주세요!";

      });

      return;

    }



    setState(() {

      answer = "AI 생각 중... 🤖";

    });



    final result =
        await AIService().askAI(
          controller.text
        );



    setState(() {

      answer = result;

    });


  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: const Text("AI 선생님"),

      ),



      body: Padding(


        padding: const EdgeInsets.all(20),


        child: Column(


          children: [



            Expanded(


              child: Card(


                child: Padding(


                  padding: const EdgeInsets.all(16),


                  child: SingleChildScrollView(


                    child: Text(

                      answer,

                      style: const TextStyle(

                        fontSize:18,

                      ),

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


                child: const Text(

                  "AI에게 질문하기"

                ),


              ),

            )


          ],


        ),


      ),


    );


  }


}