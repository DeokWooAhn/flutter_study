import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigateScreen3 extends StatelessWidget {
  const NavigateScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("화면 이동")),
      body: Center(
        child: TextButton(
          child: const Text("Go to Page"),
          onPressed: () {
            context.pushNamed("new");
          },
        ),
      ),
    );
  }
}
