import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("새 노트"),
      ),

      body: const Center(
        child: Text(
          "✏️ 필기 공간 준비 중",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),

    );
  }
}