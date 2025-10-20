import 'package:flutter/material.dart';
import 'package:part2/game/enum.dart';
import 'package:part2/game/widget/input_card.dart';

class ComInput extends StatelessWidget {
  final bool isDone;
  final InputType comInput;

  const ComInput({required this.isDone, required this.comInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        InputCard(child: getComInput()),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getComInput() {
    if (isDone) {
      return Image.asset(comInput.path);
    }
    return const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          "?",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
