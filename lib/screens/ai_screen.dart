import 'package:flutter/material.dart';

class AIScreen extends StatefulWidget {
  const AIScreen({super.key});

  @override
  State<AIScreen> createState() => _AIScreenState();
}

class _AIScreenState extends State<AIScreen> {

  final TextEditingController controller = TextEditingController();

  List<String> messages = [];

  void sendMessage() {
    if (controller.text.isEmpty) return;

    setState(() {
      messages.add("나: ${controller.text}");
      messages.add("AI: 질문을 분석하고 있어요...");
      controller.clear();
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("AI 선생님"),
      ),

      body: Column(

        children: [

          Expanded(
            child: ListView.builder(
              itemCount: messages.length,

              itemBuilder: (context, index){

                return Padding(
                  padding: const EdgeInsets.all(12),

                  child: Text(
                    messages[index],
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                );

              },
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(12),

            child: Row(

              children: [

                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: "공부 질문 입력",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),


                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: sendMessage,
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}