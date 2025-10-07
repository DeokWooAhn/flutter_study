import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print('가위, 바위, 보 중 하나를 입력해 주세요.');

  final String userInput = stdin.readLineSync(encoding: utf8) ?? "Error";

  const selectList = ["가위", "바위", "보"];
  final comInput = selectList[Random().nextInt(3)];

  print(comInput);

  final result = getResult(userInput, comInput);
  print(result);
}

String getResult(String userInput, String comInput) {
  const comWin = "컴퓨터 승리";
  const userWin = "사용자 승리";
  const draw = "무승부";

  String result = draw;

  switch (userInput) {
    case '가위':
      if (comInput == "바위") {
        result = comWin;
      }

      if (comInput == "보") {
        result = userWin;
      }
    case '바위':
      if (comInput == "보") {
        result = comWin;
      }

      if (comInput == "가위") {
        result = userWin;
      }
    case '보':
      if (comInput == "가위") {
        result = comWin;
      }

      if (comInput == "바위") {
        result = userWin;
      }
    default:
      result = "올바른 값을 입력해주세요.";
  }

  return result;
}
