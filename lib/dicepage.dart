import 'dart:math';

import 'package:flutter/material.dart';

class PracDicePge extends StatefulWidget {
  const PracDicePge({super.key});

  @override
  State<PracDicePge> createState() => _PracDicePgeState();
}

class _PracDicePgeState extends State<PracDicePge> {

  int practiceLeft = 3 ;
  int practiceRight = 6 ;

  void pracChangeDice (){
    setState(() {
      practiceLeft = Random().nextInt(6)+1;
      practiceRight = Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.redAccent,
      body:Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: (){
                      pracChangeDice();
                    },
                    child:
                    Image.asset('images/dice$practiceLeft.png',
                    ),
                ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  pracChangeDice();
                },
                child:
                Image.asset('images/dice$practiceRight.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
