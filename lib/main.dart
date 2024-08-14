import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: const Center(

              child: Text('Ask Me Anything ?',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BungeeSpice',
                ),
              ),
            ),
            backgroundColor :Colors.blue,
          ),
          body: MagicBall8(),
        ),

      )
  );
}

class MagicBall8 extends StatefulWidget {
  const MagicBall8({super.key});

  @override
  State<MagicBall8> createState() => _MagicBall8State();
}

class _MagicBall8State extends State<MagicBall8> {
  int ballButton=1;
  void buttonpressed(){
     ballButton=Random().nextInt(5)+1;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  buttonpressed();
                  print('ballButton=$ballButton');
                });

              },
              child: Image.asset('images/ball$ballButton.png'),
            ),

          ),



        ],
      ),


    );
  }
}

