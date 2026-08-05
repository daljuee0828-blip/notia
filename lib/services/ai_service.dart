class AIService {

  Future<String> askAI(String question) async {

    // 지금은 테스트 답변
    // 다음 단계에서 여기에 Groq API 연결

    await Future.delayed(
      const Duration(seconds: 1),
    );

    return 
    "AI 답변 준비 완료!\n\n"
    "질문: $question";

  }

}