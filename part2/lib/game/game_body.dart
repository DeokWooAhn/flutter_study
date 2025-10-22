import 'dart:math';

import 'package:flutter/material.dart';
import 'package:part2/game/widget/user_input.dart';

import 'enum.dart';
import 'widget/com_input.dart';
import 'widget/game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _comInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setComInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ComInput(isDone: isDone, comInput: _comInput),
        ),
        Expanded(child: GameResult(isDone: isDone, result: getResult(), callback: reset,)),
        Expanded(
          child: UserInput(
            isDone: isDone,
            callback: setUserInput,
            userInput: _userInput,
          ),
        ),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setComInput() {
    final random = Random();
    _comInput = InputType.values[random.nextInt(3)];
  }

  void reset() {
    setState(() {
      isDone = false;
      setComInput();
    });
  }

  Result? getResult() {
    if (_userInput == null) return null;

    switch (_userInput!) {
      case InputType.rock:
        switch (_comInput) {
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.comWin;
        }
      case InputType.scissors:
        switch (_comInput) {
          case InputType.rock:
            return Result.comWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
        }
      case InputType.paper:
        switch (_comInput) {
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.comWin;
          case InputType.paper:
            return Result.draw;
        }
    }
  }
}
