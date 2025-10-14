import 'package:flutter/material.dart';

class InPutScreen extends StatelessWidget {
  const InPutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [TestCheckBox(),
    TestRadioButton()]);
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: values[0],
          onChanged: (value) => changeValue(0, value: value),
        ),
        Checkbox(
          value: values[1],
          onChanged: (value) => changeValue(1, value: value),
        ),
        Checkbox(
          value: values[2],
          onChanged: (value) => changeValue(2, value: value),
        ),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

enum TestRadioValue {
  test1,
  test2,
  test3,
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioButton? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio(value: TestRadioValue.test1, groupValue: TestRadioValue, onChanged: ,)
      ],
    );
  }
}

