import 'package:flutter/material.dart';

class SelfIntroDisplayScreen extends StatelessWidget {

  String selfIntro;
  String name;

  SelfIntroDisplayScreen({required this.selfIntro, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Introduction'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${name}'),
            Text('${selfIntro}'),
          ],
        ),
      ),
    );
  }
}
