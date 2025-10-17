import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPageRoute extends StatelessWidget {
  const NewPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome New Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text("Go To Back"),
            ),
            TextButton(
              onPressed: () => context.pushNamed("new1"),
              child: Text("Go To New Page2"),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPageRoute2 extends StatelessWidget {
  const NewPageRoute2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text("Go To Back"),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                context.goNamed("home");
              },
              child: Text("Go To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
