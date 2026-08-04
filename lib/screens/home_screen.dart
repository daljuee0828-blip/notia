import 'note_screen.dart';
import 'package:flutter/material.dart';
import 'ai_screen.dart';
import '../widgets/tool_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

          children: [

            const Text(
              "AI 학습 필기 노트",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),


            ToolButton(
              icon: Icons.edit,
              title: "새 노트",
            ),


            ToolButton(
              icon: Icons.smart_toy,
              title: "AI 선생님",
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AIScreen(),
                  ),
                );

              },
            ),


            ToolButton(
              icon: Icons.picture_as_pdf,
              title: "PDF 가져오기",
            ),


            ToolButton(
              icon: Icons.timer,
              title: "공부 타이머",
            ),

          ],
        ),
      ),
    );
  }
}