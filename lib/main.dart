import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Game());
}

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int leftbotton = 1;
  int rightbotton = 2;

  void changeimage() {
    leftbotton = Random().nextInt(5) + 1;
    rightbotton = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Matching Game',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              leftbotton == rightbotton ? 'مبروك لقد نجحت' : 'حاول مرة اخرى',
              style: TextStyle(fontSize: 42.0),
            ),
            Row(
              children: [
                Expanded(
                 
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('images/image.$leftbotton.png'),
                  ),
                ),
                Expanded(
                  
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          changeimage();
                        });
                      },
                      child: Image.asset('images/image.$rightbotton.png')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
