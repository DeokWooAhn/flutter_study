import 'package:flutter/material.dart';

class CallbackScreen extends StatelessWidget {
  const CallbackScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(body: const TestWidget());
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: $value", style: const TextStyle(fontSize: 30)),
        TestButton(),
      ],
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: GestureDetector(
        onTap: () => {},
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text("Up Counter", style: TextStyle(fontSize: 24)),
          ),
        ),
      ),
    );
  }
}
