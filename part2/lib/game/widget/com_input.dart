import 'package:flutter/material.dart';
import 'package:part2/game/enum.dart';
import 'package:part2/game/widget/input_card.dart';

class ComInput extends StatelessWidget {
  final bool isDone;
  final InputType comInput;

  const ComInput({required this.isDone, required this.comInput, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }

    return InputCard(
      callback: callback,
      child: SizedBox(width: 60, height: 6, child: const Text("?")),
    );
  }
}
