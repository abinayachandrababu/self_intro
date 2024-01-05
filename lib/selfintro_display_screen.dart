import 'package:flutter/material.dart';
import 'package:flutter_self_intro/selfintro_display_screen.dart';
import 'package:flutter_self_intro/selfintro_screen.dart';

class SelfIntroScreen extends StatefulWidget {
  const SelfIntroScreen({super.key});

  @override
  State<SelfIntroScreen> createState() => SelfIntroScreenState();
}

class SelfIntroScreenState extends State<SelfIntroScreen> {

  TextEditingController selfIntro = new TextEditingController();

  TextEditingController name = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Introduction',style: TextStyle(color: Colors.black,fontSize: 25,
            fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name,
                minLines: 1,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: selfIntro,
                minLines: 1,
                maxLines: 10,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: "Enter your self intro",
                ),
              ),
              SizedBox( 
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                Navigator.of(context) .push (MaterialPageRoute(
                    builder: (context) => SelfIntroDisplayScreen(
                       name: name.text,
                         selfIntro: selfIntro.text)));
              },
                  child: Text('Submit',style: TextStyle(color: Colors.deepPurpleAccent,),),),
            ],
          ),
        ),
      ),
    );
  }
}

