import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Study to Container")),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.red.shade200,
          border: Border.all(
            color: Colors.yellow,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(150),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              offset: Offset(6, 6),
              blurRadius: 10,
              spreadRadius: 10,
            ),
            BoxShadow(
              color: Colors.purple.withValues(alpha: 0.5),
              offset: Offset(-6, -6),
              blurRadius: 10,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Container(color: Colors.blue, child: Text("Hello Container")),
        ),
      ),
    );
  }
}
