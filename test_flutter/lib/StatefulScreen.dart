import 'package:flutter/material.dart';

class StatefulBody extends StatelessWidget {
  const StatefulBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(),
      ],
    );
  }
}


class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

