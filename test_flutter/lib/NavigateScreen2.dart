import 'package:flutter/material.dart';
import 'package:test_flutter/screen/new_page.dart';

class NavigateScreen2 extends StatelessWidget {
  const NavigateScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("화면 이동")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewPage(),
              ),
            );
          },
          child: Text("Go to Page"),
        ),
      ),
    );
  }
}
