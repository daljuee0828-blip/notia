import React from "react";
import "./style.css";

export default function App() {
  return (
    <div className="app">
      <h1>📘 Notia</h1>
      <p>AI 학습 필기 노트</p>

      <div className="cards">
        <button>✏️ 새 노트</button>
        <button>🤖 AI 선생님</button>
        <button>📄 PDF 가져오기</button>
        <button>⏱ 공부 타이머</button>
      </div>

      <div className="note">
        오늘의 공부 기록
        <br />
        아직 기록이 없습니다.
      </div>
    </div>
  );
}