import 'package:flutter/material.dart';

const assetImagePath = "assets/images";
const logoImage = "$assetImagePath/img_logo.png";

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("asset 사용하기"),),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(logoImage),
    );
  }
}
