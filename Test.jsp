<%-- 
    Document   : Test
    Created on : 17 Nov, 2023, 7:54:23 PM
    Author     : HP
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Quiz</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #quiz-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            width: 400px;
        }

        .question {
            padding: 20px;
            border-bottom: 1px solid #ddd;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .question:hover {
            background-color: #f9f9f9;
        }

        .answers {
            padding: 20px;
        }

        .answer {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .answer:hover {
            background-color: #f9f9f9;
        }

        .result {
            text-align: center;
            padding: 20px;
            display: none;
        }

        button {
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 10px 0;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div id="quiz-container">
        <div class="question" onclick="showQuestion(1)">
            Question 1: What is the capital of France?
        </div>
        <div class="answers" id="answers-1" style="display: none;">
            <div class="answer" onclick="checkAnswer(1, 'Paris')">Paris</div>
            <div class="answer" onclick="checkAnswer(1, 'Berlin')">Berlin</div>
            <div class="answer" onclick="checkAnswer(1, 'Madrid')">Madrid</div>
        </div>

        <div class="question" onclick="showQuestion(2)">
            Question 2: Which planet is known as the Red Planet?
        </div>
        <div class="answers" id="answers-2" style="display: none;">
            <div class="answer" onclick="checkAnswer(2, 'Mars')">Mars</div>
            <div class="answer" onclick="checkAnswer(2, 'Venus')">Venus</div>
            <div class="answer" onclick="checkAnswer(2, 'Jupiter')">Jupiter</div>
        </div>

        <div class="question" onclick="showQuestion(3)">
            Question 3: What is the largest mammal on Earth?
        </div>
        <div class="answers" id="answers-3" style="display: none;">
            <div class="answer" onclick="checkAnswer(3, 'Blue Whale')">Blue Whale</div>
            <div class="answer" onclick="checkAnswer(3, 'Elephant')">Elephant</div>
            <div class="answer" onclick="checkAnswer(3, 'Giraffe')">Giraffe</div>
        </div>

        <div class="result" id="result">
            <p id="score"></p>
            <button onclick="resetQuiz()">Try Again</button>
        </div>
    </div>

    <script>
        let score = 0;

        function showQuestion(questionNumber) {
            // Hide all answers
            for (let i = 1; i <= 3; i++) {
                document.getElementById(`answers-${i}`).style.display = 'none';
            }

            // Show answers for the selected question
            document.getElementById(`answers-${questionNumber}`).style.display = 'block';
        }

        function checkAnswer(questionNumber, selectedAnswer) {
            const correctAnswers = {
                1: 'Paris',
                2: 'Mars',
                3: 'Blue Whale'
            };

            if (correctAnswers[questionNumber] === selectedAnswer) {
                score++;
            }

            // Move to the next question or show the result
            if (questionNumber < 3) {
                showQuestion(questionNumber + 1);
            } else {
                showResult();
            }
        }

        function showResult() {
            const resultElement = document.getElementById('result');
            const scoreElement = document.getElementById('score');

            scoreElement.textContent = `Your Score: ${score} / 3`;
            resultElement.style.display = 'block';
        }

        function resetQuiz() {
            score = 0;

            // Hide result
            document.getElementById('result').style.display = 'none';

            // Reset answers display
            for (let i = 1; i <= 3; i++) {
                document.getElementById(`answers-${i}`).style.display = 'none';
            }

            // Show the first question
            showQuestion(1);
        }
    </script>
</body>
</html>